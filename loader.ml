#load "lexical.cmo";;

open Lexical;;

let rec tokens lexbuf =
  let tok = Lexical.token lexbuf in
  match tok with
  | Lexical.EOF -> [Lexical.EOF]
  | _ -> tok :: tokens lexbuf
;;

let lexico str =
  let lexbuf = Lexing.from_string str in
  tokens lexbuf
;;

let lex arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let toks = tokens lexbuf in
  let _ = close_in ic in
  toks

