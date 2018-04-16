{ 
	open Lexing
	open Printf

	type tokens = 

							(* BLOCKS *)
							| OPEN_PARENTHESIS
							| CLOSE_PARENTHESIS
							| OPEN_BRACKETS
							| CLOSE_BRACKETS
							| OPEN_CURLED_BRACKETS
							| CLOSE_CURLED_BRACKETS

							(* MARKERS *)
							| ADDRESS (* & *)
							| COLON
							| COMA
							| EOF
							| SEMICOLON

							(* KEYWORDS *)
							| BREAK
							| CASE
							| DEFAULT
							| DO
							| ELSE
							| FALSE
							| FOR
							| IF
							| INCLUDE
							| NULL
							| RETURN
							| SWITCH
							| TRUE
							| WHILE

							(* TYPES *)
							| BOOL
							| CHAR
							| FLOAT
							| INTEGER
							| VOID

							(* LOGIC OPERATIONS *)
							| EQUALS
							| DIFFERENT
							| LESS_THAN
							| MORE_THAN
							| LESS_EQUAL_THAN
							| MORE_EQUAL_THAN
							| NOT
							| OR (* || *)
							| AND (* && *)

							(* BINARY OPERATIONS *)
							| ATTRIBUTION
							| ADDITION
							| SUBTRACTION
							| MULTIPLICATION
							| DIVISION
							| MODULE
							| INCREMENT (* incrementar (++) *)
							| DECREMENT (* decrementar (--) *)
							| ADD_ATTRIBUTION (* += *)
							| SUB_ATTRIBUTION (* -= *)
							| MUL_ATTRIBUTION (* *= *)
							| DIV_ATTRIBUTION (* /= *)

							(* LITERALS *)
							| LITERAL_INTEGER of int
							| LITERAL_FLOAT of float
							| LITERAL_CHAR of char
							| LITERAL_STRING of string
							| HEADER_FILE of string

							(* OTHERS *)
							| ID of string
							| ARROW_OPERATION (* -> *)


  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

}

let digito = ['0' - '9']
let inteiro = digito+
let numero = (digito* '.' digito+) | (digito+ '.' digito+)

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*
let caracter = '\'' letra '\''

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

let header_file = ('<' letra+ '.' 'h' '>') | ('"' letra+ '.' 'h' '"')

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "/*"       { comentario_bloco 0 lexbuf }
| '('        { OPEN_PARENTHESIS }
| ')'        { CLOSE_PARENTHESIS }
| '{'        { OPEN_CURLED_BRACKETS }
| '}'        { CLOSE_CURLED_BRACKETS }
| '['        { OPEN_BRACKETS }
| ']'        { CLOSE_BRACKETS }
| '+'        { ADDITION }
| '-'        { SUBTRACTION }
| '*'        { MULTIPLICATION }
| '/'        { DIVISION }
| '%'        { MODULE }
| '='        { ATTRIBUTION }
| ','        { COMA }
| ';'        { SEMICOLON }
| ':'        { COLON }
| '&'        { ADDRESS }
| '>'        { MORE_THAN }
| '<'        { LESS_THAN }
| '!'        { NOT }
| "=="       { EQUALS }
| "!="       { DIFFERENT }
| ">="       { MORE_EQUAL_THAN }
| "<="       { LESS_EQUAL_THAN }
| "||"       { OR }
| "&&"       { AND }
| "++"       { INCREMENT }
| "--"       { DECREMENT }
| "+="		   { ADD_ATTRIBUTION }
| "-="		   { SUB_ATTRIBUTION }
| "*="		   { MUL_ATTRIBUTION }
| "/="		   { DIV_ATTRIBUTION }
| "->"		   { ARROW_OPERATION }
| "int"      { INTEGER }
| "float"    { FLOAT }
| "char"     { CHAR }
| "bool"     { BOOL }
| "if"       { IF }
| "else"     { ELSE }
| "while"    { WHILE }
| "do"       { DO }
| "for"      { FOR }
| "switch"   { SWITCH }
| "case"     { CASE }
| "break"    { BREAK }
| "default"  { DEFAULT }
| "null"	   { NULL }
| "true"	   { TRUE }
| "false"	   { FALSE }
| "void"	   { VOID }
| "return"   { RETURN }
| "#include" { INCLUDE }

| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITERAL_STRING str }

| header_file as hf { HEADER_FILE hf }

| inteiro as num { let numero = int_of_string num in 
                    LITERAL_INTEGER numero }

| numero as num { let n = float_of_string num in 
                    LITERAL_FLOAT n }

| caracter as char_string { if ((String.length char_string) != 3) then failwith "Caracter invalido"
                            else LITERAL_CHAR (char_string.[1]) }

| identificador as id { ID id }

| _ as c  { failwith (msg_erro lexbuf c) }

| eof        { EOF }

(* AUXILIAR RULES *)

and comentario_bloco n = parse
   "*/"      { if n=0 then token lexbuf 
               else comentario_bloco (n-1) lexbuf }
| "/*"       { comentario_bloco (n+1) lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco n lexbuf }
| _          { comentario_bloco n lexbuf }
| eof        { failwith "Comentário não fechado" }

and leia_string lin col buffer = parse
  '"'     	{ Buffer.contents buffer }
| "\\t"    	{ Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"    	{ Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      	{ erro lin col "A string não foi fechada"}





