{
  open Lexing
  open Printf
  open Sintatico

  exception Erro of string

  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1;
                 pos_bol = pos.pos_cnum
      }

  let pos_atual lexbuf = lexbuf.lex_start_p

}

let digito = ['0' - '9']
let inteiro = '-'? digito+
let frac = '.'digito*
let real = digito* frac

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '\r' '\n' ]*

rule token =
  parse
  | brancos { token lexbuf }
  | novalinha  { incr_num_linha lexbuf; token lexbuf }
  | comentario { token lexbuf }
  | "/*"       { comentario_bloco 0 lexbuf }
  | "{"   { OPEN_CURLED_BRACKETS (pos_atual lexbuf) }
  | "}"   { CLOSE_CURLED_BRACKETS (pos_atual lexbuf) }
  | '+'   { ADDITION (pos_atual lexbuf) }
  | '-'   { SUBTRACTION (pos_atual lexbuf) }
  | '*'   { MULTIPLICATION (pos_atual lexbuf) }
  | '/'   { DIVISION (pos_atual lexbuf) }
  | '<'   { LESS_THAN (pos_atual lexbuf) }
  | "=="   { EQUALS (pos_atual lexbuf) }
  | "!="  { DIFFERENT (pos_atual lexbuf) }
  | '>'   { MORE_THAN (pos_atual lexbuf) }
  | "&&"  { AND (pos_atual lexbuf) }
  | "||"  { OR (pos_atual lexbuf) }
  | '('   { OPEN_PARENTHESIS (pos_atual lexbuf) }
  | ')'   { CLOSE_PARENTHESIS (pos_atual lexbuf) }
  | ','   { COMA (pos_atual lexbuf) }
  | ';'   { SEMICOLON (pos_atual lexbuf) }
  | "="  { ATTRIBUTION (pos_atual lexbuf) }
  | "return"    { RETURN (pos_atual lexbuf) }
  | "int"    { INTEGER (pos_atual lexbuf) }
  | "bool"   { BOOL (pos_atual lexbuf) }
  | "if"         { IF (pos_atual lexbuf) }
  | "else"      { ELSE (pos_atual lexbuf) }
  | "printf"     { PRINTF (pos_atual lexbuf) }
  | "scanf"      { SCANF (pos_atual lexbuf) }
  | "while"      { WHILE (pos_atual lexbuf) }
  | "for"        { FOR (pos_atual lexbuf) }
  | "float"      { FLOAT (pos_atual lexbuf) }
  | "char"      { CHAR (pos_atual lexbuf) }
  | "\"%s\""         { ARGS_SCAN (pos_atual lexbuf) }
  | "\"%d\""         { ARGD_SCAN (pos_atual lexbuf) }
  | "\"%f\""         { ARGF_SCAN (pos_atual lexbuf) }
  | "&"          { ADDRESS (pos_atual lexbuf) }
  | identificador as x    { ID (x, pos_atual lexbuf) }
  | '"'   { let buffer = Buffer.create 1 in
            let str = leia_string buffer lexbuf in
               LITERAL_STRING (str, pos_atual lexbuf) }
  | inteiro as n  { LITERAL_INTEGER (int_of_string n, pos_atual lexbuf) }
  | real as n    { LITERAL_FLOAT (float_of_string n, pos_atual lexbuf) }
  | "'"_"'" as s   {  let c = String.get s 1 in LITERAL_CHAR (c,pos_atual lexbuf) }
  | _  { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
  | eof   { EOF }

and comentario_bloco n = parse
   "*/"   { if n=0 then token lexbuf
            else comentario_bloco (n-1) lexbuf }
| "/*"    { comentario_bloco (n+1) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { raise (Erro "Comentário não terminado") }

and leia_string buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof       { raise (Erro "A string não foi terminada") }

