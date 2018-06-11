%{
	open Sintatico_arvore

%}

%token <string> ID
%token <string> LITERAL_STRING
%token <int> LITERAL_INTEGER
%token <float> LITERAL_FLOAT
%token <char> LITERAL_CHAR
%token <bool> LITERAL_BOOL
%token INTEGER
%token FLOAT
%token CHAR
%token BOOL
%token MAIN
%token ATTRIBUTION
%token OPEN_PARENTHESIS
%token CLOSE_PARENTHESIS
%token OPEN_BRACKETS
%token CLOSE_BRACKETS
%token OPEN_CURLED_BRACKETS
%token CLOSE_CURLED_BRACKETS
%token ADDITION
%token SUBTRACTION
%token MULTIPLICATION
%token DIVISION
%token COMA
%token SEMICOLON
%token COLON
%token SINGLE_QUOTE
%token MORE_THAN
%token LESS_THAN
%token NOT
%token ADDRESS
%token EQUALS
%token MORE_EQUAL_THAN
%token LESS_EQUAL_THAN
%token DIFFERENT
%token INCREMENT
%token DECREMENT
%token OR
%token AND
%token MODULE
%token IF
%token ELSE
%token WHILE
%token FOR
%token DO
%token SWITCH
%token CASE
%token BREAK
%token DEFAULT
%token RETURN
%token <string> HEADER_FILE
%token EOF
%token SCANF PRINTF

%left OR
%left AND
%left MORE_THAN LESS_THAN MORE_EQUAL_THAN LESS_EQUAL_THAN EQUALS DIFFERENT
%left ADDITION SUBTRACTION
%left MULTIPLICATION DIVISION MODULE
%left NOT


%start <Sintatico_arvore.programa> programa

%%

programa: includes funcoes EOF{ $2 }

includes: /* nada */  { None }
        | HEADER_FILE { Some(Includes $1) };

funcoes: /* nada */ { [] }
       | funcao funcoes { $1 :: $2 }
       ;

funcao: INTEGER MAIN OPEN_PARENTHESIS argumentos CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { Funcao(TINTEGER, ExpVar "main", [], $7, ExpInt 1) }
	  | tipo ID OPEN_PARENTHESIS argumentos CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { Funcao($1, ExpVar $2, $4, $7, ExpInt 1) }
	  ;

tipo: INTEGER { TINTEGER }
    | FLOAT   { TFLOAT }
    | CHAR    { TCHAR  }
    | BOOL    { TBOOL  }
    ;

argumentos: /* nada */ { [] }
	      | seq { $1 }

seq: argumento { [$1] }
   | seq COMA argumento { $1 @ [$3] }

argumento: tipo ID { CmdDec(ExpVar $2, $1, None) }

comandos: /* nada */             { [] }
	| comando SEMICOLON comandos { $1 :: $3 }
	| comando comandos           { $1 :: $2 }
	;

comando: cmd_atrib   { $1 }
       | cmd_dec     { $1 }
       | cmd_printf  { $1 }
       | cmd_scanf   { $1 }
       | cmd_for     { $1 }
       | cmd_do      { $1 }
       | cmd_while   { $1 }
       | cmd_if      { $1 }
       | cmd_switch  { $1 }
       | cmd_incr    { $1 }
       | cmd_decr    { $1 }
       | cmd_return  { $1 }
       ;

cmd_atrib: id=ID ATTRIBUTION exp=expressao SEMICOLON { CmdAtrib (ExpVar id, exp) };

cmd_dec: tipo ID inicial SEMICOLON { CmdDec(ExpVar $2, $1, $3) }
       ;

inicial: 
       | { None }
       | ATTRIBUTION expressao { Some($2) }
       ;

cmd_printf: PRINTF OPEN_PARENTHESIS args CLOSE_PARENTHESIS SEMICOLON { CmdPrintf($3) };

cmd_scanf: SCANF OPEN_PARENTHESIS expressao COMA ADDRESS ID CLOSE_PARENTHESIS SEMICOLON { CmdScanf($3, ExpVar $6) };

cmd_while: WHILE OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { CmdWhile($3, $6) };

cmd_for: FOR OPEN_PARENTHESIS cmd_atrib SEMICOLON expressao SEMICOLON comando CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { CmdFor($3, $5, $7, $10) };

cmd_do: DO OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS WHILE OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS SEMICOLON { CmdDo($3, $7) };

cmd_if: IF OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS elsee { CmdIf($3, $6, $8) };

cmd_incr: ID INCREMENT SEMICOLON { CmdIncr(ExpVar $1) };

cmd_decr: ID DECREMENT SEMICOLON { CmdDecr(ExpVar $1) };

elsee: /* nada */ { None }
     | ELSE OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { Some($3) }
     | ELSE cmd_if { Some([$2]) }
     ;

cmd_switch: SWITCH OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS cases default CLOSE_CURLED_BRACKETS { CmdSwitch($3, $6, Some($7)) };

cases: /* nada */ { [] }
     | case cases { $1 :: $2 }
     ;

case: CASE expressao COLON comandos BREAK SEMICOLON { CASE($2, $4) }
    | CASE SINGLE_QUOTE expressao SINGLE_QUOTE COLON comandos BREAK SEMICOLON { CASE($3, $6) }
    ;

default: DEFAULT COLON comandos { DEFAULT($3) };

cmd_return:
          | RETURN exp=expressao SEMICOLON { CmdReturn(exp) };

args: /* nada */ { [] }
    | seqs { $1 }
    ;

seqs: expressao { [$1] }
    | seqs COMA expressao { $1 @ [$3] }
    ;

expressao: 
         | id=ID             { ExpVar     id }
         | i=LITERAL_INTEGER { ExpInt      i }
         | f=LITERAL_FLOAT   { ExpFloat    f }
         | c=LITERAL_CHAR    { ExpChar     c }
         | s=LITERAL_STRING  { ExpString   s }
         | b=LITERAL_BOOL    { ExpBool     b }
         | NOT e=expressao   { ExpUn(Not, e) }
         | le=expressao op=oper re=expressao { ExpBin (op, le, re) }
         | OPEN_PARENTHESIS e=expressao CLOSE_PARENTHESIS { e }
         | tipo id=ID OPEN_BRACKETS expressao CLOSE_BRACKETS { ExpVar id }
         | chama_func { $1 }
         ;


%inline oper:
            | OR { Or }
            | AND { And }
            | ADDITION { Add }
            | SUBTRACTION { Sub }
            | MULTIPLICATION { Mul }
            | DIVISION { Div }
            | MORE_THAN { More_Than }
            | LESS_THAN { Less_Than }
            | MORE_EQUAL_THAN { More_Equal_Than }
            | LESS_EQUAL_THAN { Less_Equal_Than }
            | EQUALS { Eq }
            | DIFFERENT { Dif }
            | MODULE { Mod }
            ;

chama_func: ID OPEN_PARENTHESIS args CLOSE_PARENTHESIS { ChamaFunc(ExpVar $1, $3) };

