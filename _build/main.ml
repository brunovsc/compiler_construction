open Sintatico_arvore

let main =
  let executa_testes = ref false in
  
     (Interp.parse (read_line ()))
      

(* para compilar:
     ocamlbuild main.native -use-menhir -use-ocamlfind -package oUnit

 *)   
