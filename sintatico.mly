
%{
open Lexing
open Ast
open Sast
%}

%token <int * Lexing.position> LITERAL_INTEGER
%token <float * Lexing.position> LITERAL_FLOAT
%token <string * Lexing.position> ID
%token <string * Lexing.position> LITERAL_STRING
%token <char * Lexing.position> LITERAL_CHAR
%token <bool * Lexing.position> LITERAL_BOOL
%token <Lexing.position> COMA SEMICOLON
%token <Lexing.position> OPEN_PARENTHESIS CLOSE_PARENTHESIS
%token <Lexing.position> INTEGER FLOAT BOOL CHAR
%token <Lexing.position> IF ELSE
%token <Lexing.position> ATTRIBUTION RETURN
%token <Lexing.position> ADDITION
%token <Lexing.position> SUBTRACTION
%token <Lexing.position> MULTIPLICATION
%token <Lexing.position> DIVISION
%token <Lexing.position> LESS_THAN
%token <Lexing.position> EQUALS
%token <Lexing.position> DIFFERENT
%token <Lexing.position> MORE_THAN
%token <Lexing.position> AND
%token <Lexing.position> OR
%token <Lexing.position> OPEN_CURLED_BRACKETS
%token <Lexing.position> CLOSE_CURLED_BRACKETS
%token <Lexing.position> PRINTF
%token <Lexing.position> SCANF ARGS_SCAN ARGD_SCAN ARGF_SCAN ADDRESS
%token <Lexing.position> WHILE
%token <Lexing.position> FOR
%token EOF

%left OR
%left AND
%left EQUALS DIFFERENT
%left MORE_THAN LESS_THAN
%left ADDITION SUBTRACTION
%left MULTIPLICATION DIVISION


%start <Sast.expressao Ast.programa> programa

%%

programa: 
          fs = declaracao_de_funcao*
          cs = comando*
          EOF { Programa (fs, cs) }


declaracao_de_variavel:
   t=tipo ids=separated_nonempty_list(COMA, ID) SEMICOLON {
                   List.map (fun id -> DecVar (id,t)) ids  }

declaracao_de_funcao:
  | tret=tipo_simples nome=ID OPEN_PARENTHESIS formais = separated_list(COMA, parametro) CLOSE_PARENTHESIS 
  OPEN_CURLED_BRACKETS
  ds = declaracao_de_variavel*
  cs = comando*  
  CLOSE_CURLED_BRACKETS {
    DecFun {
      fn_nome = nome;
      fn_tiporet = tret ;
      fn_formais = formais;
      fn_locais = List.flatten ds;
      fn_corpo = cs
    }
 }

parametro: t=tipo nome=ID { (nome, t) }

tipo: t=tipo_simples  { t }


tipo_simples: INTEGER  { TipoInt    }
            | FLOAT     { TipoFloat }
            | CHAR     { TipoChar }
            | BOOL { TipoBool   }


comando: c=comando_atribuicao { c }
       | c=comando_se         { c }
       | c=comando_chamada    { c }
       | c=comando_retorno    { c }
       | c=comando_print      { c }
       | c=comando_scanInt    { c }
       | c=comando_scanFloat  { c }
       | c=comando_scanString { c }
       | c=comando_while      { c }
       | c=comando_for        { c }

comando_atribuicao: esq=expressao ATTRIBUTION dir=expressao SEMICOLON {
      CmdAtrib (esq,dir)
}

comando_se: IF OPEN_PARENTHESIS teste=expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS
               entao=comando+
               CLOSE_CURLED_BRACKETS
               senao=option(ELSE OPEN_CURLED_BRACKETS cs=comando+ CLOSE_CURLED_BRACKETS {cs})
             {
              CmdSe (teste, entao, senao)
            }

comando_chamada: exp=chamada SEMICOLON { CmdChamada exp }

comando_retorno: RETURN e=expressao? SEMICOLON { CmdRetorno e}

comando_print: PRINTF OPEN_PARENTHESIS exp=expressao CLOSE_PARENTHESIS SEMICOLON { CmdPrint exp }

comando_scanInt: SCANF OPEN_PARENTHESIS ARGD_SCAN COMA ADDRESS exp=expressao CLOSE_PARENTHESIS SEMICOLON { CmdScanInt exp }

comando_scanFloat: SCANF OPEN_PARENTHESIS ARGF_SCAN COMA ADDRESS exp=expressao CLOSE_PARENTHESIS SEMICOLON { CmdScanFloat exp }

comando_scanString: SCANF OPEN_PARENTHESIS ARGS_SCAN COMA ADDRESS exp=expressao CLOSE_PARENTHESIS SEMICOLON { CmdScanString exp }

comando_while: WHILE OPEN_PARENTHESIS exp=expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS cs=comando* CLOSE_CURLED_BRACKETS { CmdWhile (exp, cs) }

comando_for: FOR OPEN_PARENTHESIS v=ID ATTRIBUTION init=expressao SEMICOLON ID LESS_THAN valor=expressao SEMICOLON expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS cs=comando* CLOSE_CURLED_BRACKETS
  { 
     CmdSe(ExpBool (true, snd v), 
                 [
           CmdAtrib (ExpVar(VarSimples v), init) ;
                 CmdWhile (
                   ExpOp ((Menor, snd v),
                   ExpVar (VarSimples v),
                   valor
                 ),
                 List.append cs [CmdAtrib (ExpVar (VarSimples v),
                                    ExpOp (
                                      (Mais, snd v),
                                      ExpVar (VarSimples v),
                                      ExpInt (1, snd v))
                                    )
                                 ]
                   )
                 ],
                 None
          )
  }

expressao:
         | v=variavel { ExpVar v    }
         | i=LITERAL_INTEGER      { ExpInt i    }
         | f=LITERAL_FLOAT      { ExpFloat f    }
         | s=LITERAL_STRING   { ExpString s }
         | c=LITERAL_CHAR   { ExpChar c }
         | b=LITERAL_BOOL     { ExpBool b   }
   | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
         | c = chamada  { c }
   | OPEN_PARENTHESIS e=expressao CLOSE_PARENTHESIS { e }

chamada : nome=ID OPEN_PARENTHESIS args=separated_list(COMA, expressao) CLOSE_PARENTHESIS {
             ExpChamada  (nome, args)}

%inline oper:
  | pos = ADDITION   { (Mais, pos)  }
        | pos = SUBTRACTION  { (Menos, pos) }
        | pos = MULTIPLICATION   { (Mult, pos)  }
        | pos = DIVISION    { (Div, pos)   }
        | pos = LESS_THAN  { (Menor, pos) }
        | pos = EQUALS  { (Igual, pos) }
        | pos = DIFFERENT  { (Difer, pos) }
        | pos = MORE_THAN  { (Maior, pos) }
        | pos = AND   { (E, pos)     }
        | pos = OR  { (Ou, pos)    }

variavel:
        | x=ID       { VarSimples x }


