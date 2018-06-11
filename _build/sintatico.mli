
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | TRUE
  | SWITCH
  | SUB_ATTRIBUTION
  | SUBTRACTION
  | STRING
  | SINGLE_QUOTE
  | SEMICOLON
  | SCANF
  | RETURN
  | PRINTF
  | OR
  | OPEN_PARENTHESIS
  | OPEN_CURLED_BRACKETS
  | OPEN_BRACKETS
  | NULL
  | NOT
  | MUL_ATTRIBUTION
  | MULTIPLICATION
  | MORE_THAN
  | MORE_EQUAL_THAN
  | MODULE
  | MAIN
  | LITERAL_STRING of (string)
  | LITERAL_INTEGER of (int)
  | LITERAL_FLOAT of (float)
  | LITERAL_CHAR of (char)
  | LITERAL_BOOL of (bool)
  | LESS_THAN
  | LESS_EQUAL_THAN
  | INTEGER
  | INCREMENT
  | IF
  | ID of (string)
  | HEADER_FILE of (string)
  | FOR
  | FLOAT
  | FALSE
  | EQUALS
  | EOF
  | ELSE
  | DO
  | DIV_ATTRIBUTION
  | DIVISION
  | DIFFERENT
  | DEFAULT
  | DECREMENT
  | COMA
  | COLON
  | CLOSE_PARENTHESIS
  | CLOSE_CURLED_BRACKETS
  | CLOSE_BRACKETS
  | CHAR
  | CASE
  | BREAK
  | BOOL
  | ATTRIBUTION
  | AND
  | ADD_ATTRIBUTION
  | ADDRESS
  | ADDITION

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sintatico_arvore.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Sintatico_arvore.programa) MenhirInterpreter.checkpoint
  
end
