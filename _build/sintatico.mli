
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | SUBTRACTION of (Lexing.position)
  | SEMICOLON of (Lexing.position)
  | SCANF of (Lexing.position)
  | RETURN of (Lexing.position)
  | PRINTF of (Lexing.position)
  | OR of (Lexing.position)
  | OPEN_PARENTHESIS of (Lexing.position)
  | OPEN_CURLED_BRACKETS of (Lexing.position)
  | OPEN_BRACKETS of (Lexing.position)
  | MULTIPLICATION of (Lexing.position)
  | MORE_THAN of (Lexing.position)
  | MORE_EQUAL_THAN of (Lexing.position)
  | LITERAL_STRING of (string * Lexing.position)
  | LITERAL_INTEGER of (int * Lexing.position)
  | LITERAL_FLOAT of (float * Lexing.position)
  | LITERAL_CHAR of (char * Lexing.position)
  | LITERAL_BOOL of (bool * Lexing.position)
  | LESS_THAN of (Lexing.position)
  | LESS_EQUAL_THAN of (Lexing.position)
  | INTEGER of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | FOR of (Lexing.position)
  | FLOAT of (Lexing.position)
  | EQUALS of (Lexing.position)
  | EOF
  | ELSE of (Lexing.position)
  | DIVISION of (Lexing.position)
  | DIFFERENT of (Lexing.position)
  | COMA of (Lexing.position)
  | COLON of (Lexing.position)
  | CLOSE_PARENTHESIS of (Lexing.position)
  | CLOSE_CURLED_BRACKETS of (Lexing.position)
  | CLOSE_BRACKETS of (Lexing.position)
  | CHAR of (Lexing.position)
  | BOOL of (Lexing.position)
  | ATTRIBUTION of (Lexing.position)
  | ARGS_SCAN of (Lexing.position)
  | ARGF_SCAN of (Lexing.position)
  | ARGD_SCAN of (Lexing.position)
  | AND of (Lexing.position)
  | ADDRESS of (Lexing.position)
  | ADDITION of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint
  
end
