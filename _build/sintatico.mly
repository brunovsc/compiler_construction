%{
	open Sintatico_arvore

%}

%token <string> ID
%token <string> LITERAL_STRING
%token <int> LITERAL_INTEGER
%token <float> LITERAL_FLOAT
%token <char> LITERAL_CHAR
%token <bool> LITERAL_BOOL
%token INTEGER FLOAT CHAR BOOL VOID STRING
%token MAIN
%token ATTRIBUTION
%token OPEN_PARENTHESIS CLOSE_PARENTHESIS
%token OPEN_BRACKETS CLOSE_BRACKETS
%token OPEN_CURLED_BRACKETS CLOSE_CURLED_BRACKETS
%token ADDITION SUBTRACTION MULTIPLICATION DIVISION
%token ADD_ATTRIBUTION SUB_ATTRIBUTION MUL_ATTRIBUTION DIV_ATTRIBUTION
%token COMA SEMICOLON COLON SINGLE_QUOTE
%token MORE_THAN LESS_THAN NOT ADDRESS
%token EQUALS MORE_EQUAL_THAN LESS_EQUAL_THAN DIFFERENT
%token INCREMENT DECREMENT OR AND MODULE TRUE FALSE
%token IF ELSE WHILE FOR DO
%token SWITCH CASE BREAK DEFAULT
%token RETURN
%token <string> HEADER_FILE
%token EOF
%token SCANF PRINTF
%token NULL

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
       | funcao funcoes { $1 :: $2 };

funcao: INTEGER MAIN OPEN_PARENTHESIS argumentos CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS
	{ Funcao(TINTEGER, ExpVar "main", [], $7, ExpInt 1)}
	| tipo ID OPEN_PARENTHESIS argumentos CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos
	RETURN expressao SEMICOLON CLOSE_CURLED_BRACKETS { Funcao($1, ExpVar $2, $4, $7, $9)}

tipo: INTEGER   { TINTEGER }
    | FLOAT { TFLOAT }
    | CHAR  { TCHAR  }
    | BOOL  { TBOOL  }
    ;

argumentos: /* nada */ { [] }
	  | seq { $1 }

seq: argumento { [$1] }
   | seq COMA argumento { $1 @ [$3] }

argumento: tipo ID { CmdDec(ExpVar $2, $1, None) }

comandos: /* nada */              { [] }
	| comando SEMICOLON comandos { $1 :: $3 };
	| comando comandos        { $1 :: $2 };

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
       ;

cmd_atrib: id=ID ATTRIBUTION exp=expressao { CmdAtrib (ExpVar id, exp) };

cmd_dec: tipo ID inicial { CmdDec (ExpVar $2, $1, $3) };

inicial: /* nada */      { None }
       | ATTRIBUTION expressao { Some($2) }
       ;

cmd_printf: PRINTF OPEN_PARENTHESIS args CLOSE_PARENTHESIS { CmdPrintf($3) };

cmd_scanf: SCANF OPEN_PARENTHESIS expressao COMA ADDRESS ID CLOSE_PARENTHESIS { CmdScanf($3, ExpVar $6) };

cmd_while: WHILE OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { CmdWhile($3, $6) };

cmd_for: FOR OPEN_PARENTHESIS cmd_atrib SEMICOLON expressao SEMICOLON comando CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { CmdFor($3, $5, $7, $10) };

cmd_do: DO OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS WHILE OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS SEMICOLON { CmdDo($3, $7) }

cmd_if: IF OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS elsee { CmdIf($3, $6, $8) };

cmd_incr: ID INCREMENT { CmdIncr(ExpVar $1) }

elsee: /* nada */ { None }
     | ELSE OPEN_CURLED_BRACKETS comandos CLOSE_CURLED_BRACKETS { Some($3) };
     | ELSE cmd_if { Some([$2]) };
     ;

cmd_switch: SWITCH OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS OPEN_CURLED_BRACKETS cases default CLOSE_CURLED_BRACKETS { CmdSwitch($3, $6, Some($7)) };

cases: /* nada */ { [] }
     | case cases { $1 :: $2 }
     ;

case: CASE expressao COLON comandos BREAK SEMICOLON { CASE($2, $4) }
    | CASE SINGLE_QUOTE expressao SINGLE_QUOTE COLON comandos BREAK SEMICOLON { CASE($3, $6) }
    ;

default: DEFAULT COLON comandos BREAK SEMICOLON { DEFAULT($3) }
       ;

args: /* nada */ { [] }
    | seqs { $1 }
    ;

seqs: expressao { [$1] }
    | seqs COMA expressao { $1 @ [$3] }
    ;

expressao: 
         | ID { ExpVar $1 }
         | expressao AND expr10 { ExpBin(AND, $1, $3) }
         | expressao OR  expr10 { ExpBin(OR,  $1, $3) }
         | expr10 { $1 }
         ;

expr10: expr10 EQUALS expr20 { ExpBin(EQUALS, $1, $3) }
      | expr10 DIFFERENT  expr20 { ExpBin(DIFFERENT,  $1, $3) }
      | expr20 { $1 }
      ;

expr20: expr20 MORE_THAN  expr30 { ExpBin(MORE_THAN,  $1, $3) }
      | expr20 LESS_THAN  expr30 { ExpBin(LESS_THAN,  $1, $3) }
      | expr20 MORE_EQUAL_THAN expr30 { ExpBin(MORE_EQUAL_THAN, $1, $3) }
      | expr20 LESS_EQUAL_THAN expr30 { ExpBin(LESS_EQUAL_THAN, $1, $3) }
      | expr30 { $1 }
      ;

expr30: expr30 ADDITION expr40 { ExpBin(ADDITION, $1, $3) }
      | expr30 SUBTRACTION  expr40 { ExpBin(SUBTRACTION,  $1, $3) }
      | expr40 { $1 }
      ;

expr40: expr40 MULTIPLICATION expr50 { ExpBin(MULTIPLICATION, $1, $3) }
      | expr40 DIVISION expr50 { ExpBin(DIVISION, $1, $3) }
      | expr50 { $1 }
      ;

expr50: NOT expr50 { ExpUn(NOT, $2) }
      | expr60 { $1 }
      ;

expr60: LITERAL_INTEGER { ExpInt    $1 }
      | LITERAL_FLOAT   { ExpFloat  $1 }
      | LITERAL_CHAR    { ExpChar   $1 }
      | LITERAL_STRING  { ExpString $1 }
      | LITERAL_BOOL { ExpBool $1 }
      | OPEN_PARENTHESIS expressao CLOSE_PARENTHESIS { $2 }
      | chama_func { $1 }
      ;

chama_func: ID OPEN_PARENTHESIS args CLOSE_PARENTHESIS { ChamaFunc(ExpVar $1, $3) };

