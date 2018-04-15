{ 
	open Lexing
	open Printf

	type tokens = APAR
							| FPAR
							| ACOL
							| FCOL
							| ACHA
							| FCHA
							| ATRIB
							| IF
							| ELSE
							| DO
							| WHILE
							| FOR
							| SWITCH
							| IGUAL
							| DIF
							| MENOR
							| MAIOR
							| MENORIG
							| MAIORIG
							| OU (* || *)
							| E (* && *)
							| MAIS
							| MENOS
							| MUL
							| DIV
							| INCR (* incrementar (++) *)
							| DECR (* decrementar (--) *)
							| VIRG
							| PONTVIRG
							| INTEGER
							| FLOAT
							| CHAR
							| ID of string
							| LITINT of int
							| LITFLT of float
							| LITSTR of string
							| ENDERECO (* & *)
							| RETURN
							| EOF

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

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "/*"       { comentario_bloco 0 lexbuf }
| '('        { APAR }
| ')'        { FPAR }
| '{'        { ACHA }
| '}'        { FCHA }
| '['        { ACOL }
| ']'        { FCOL }
| '+'        { MAIS }
| '-'        { MENOS }
| '*'        { MUL }
| '/'        { DIV }
| '='        { ATRIB }
| ','        { VIRG }
| ';'        { PONTVIRG }
| '&'        { ENDERECO }
| '>'        { MAIOR }
| '<'        { MENOR }
| "=="       { IGUAL }
| "!="       { DIF }
| ">="       { MAIORIG }
| "<="       { MENORIG }
| "||"       { OU }
| "&&"       { E }
| "++"       { INCR }
| "--"       { DECR }
| "int"      { INTEGER }
| "float"    { FLOAT }
| "char"     { CHAR }
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| "if"       { IF }
| "else"     { ELSE }
| "while"    { WHILE }
| "do"       { DO }
| "for"      { FOR }
| identificador as id { ID id }
| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITSTR str }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }

and comentario_bloco n = parse
   "*/"      { if n=0 then token lexbuf 
               else comentario_bloco (n-1) lexbuf }
| "/*"       { comentario_bloco (n+1) lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco n lexbuf }
| _          { comentario_bloco n lexbuf }
| eof        { failwith "Comentário não fechado" }

and leia_string lin col buffer = parse
   '"'     { Buffer.contents buffer}
| "\\t"    { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"    { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      { erro lin col "A string não foi fechada"}






