
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20180530

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 34 "sintatico.mly"
       (Lexing.position)
# 16 "sintatico.ml"
  )
    | SUBTRACTION of (
# 21 "sintatico.mly"
       (Lexing.position)
# 21 "sintatico.ml"
  )
    | SEMICOLON of (
# 14 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | SCANF of (
# 33 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | RETURN of (
# 19 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | PRINTF of (
# 32 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | OR of (
# 29 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | OPEN_PARENTHESIS of (
# 16 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | OPEN_CURLED_BRACKETS of (
# 30 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | OPEN_BRACKETS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | MULTIPLICATION of (
# 22 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | MORE_THAN of (
# 27 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | MORE_EQUAL_THAN of (
# 27 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | LITERAL_STRING of (
# 11 "sintatico.mly"
       (string * Lexing.position)
# 81 "sintatico.ml"
  )
    | LITERAL_INTEGER of (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 86 "sintatico.ml"
  )
    | LITERAL_FLOAT of (
# 9 "sintatico.mly"
       (float * Lexing.position)
# 91 "sintatico.ml"
  )
    | LITERAL_CHAR of (
# 12 "sintatico.mly"
       (char * Lexing.position)
# 96 "sintatico.ml"
  )
    | LITERAL_BOOL of (
# 13 "sintatico.mly"
       (bool * Lexing.position)
# 101 "sintatico.ml"
  )
    | LESS_THAN of (
# 24 "sintatico.mly"
       (Lexing.position)
# 106 "sintatico.ml"
  )
    | LESS_EQUAL_THAN of (
# 24 "sintatico.mly"
       (Lexing.position)
# 111 "sintatico.ml"
  )
    | INTEGER of (
# 17 "sintatico.mly"
       (Lexing.position)
# 116 "sintatico.ml"
  )
    | IF of (
# 18 "sintatico.mly"
       (Lexing.position)
# 121 "sintatico.ml"
  )
    | ID of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 126 "sintatico.ml"
  )
    | FOR of (
# 35 "sintatico.mly"
       (Lexing.position)
# 131 "sintatico.ml"
  )
    | FLOAT of (
# 17 "sintatico.mly"
       (Lexing.position)
# 136 "sintatico.ml"
  )
    | EQUALS of (
# 25 "sintatico.mly"
       (Lexing.position)
# 141 "sintatico.ml"
  )
    | EOF
    | ELSE of (
# 18 "sintatico.mly"
       (Lexing.position)
# 147 "sintatico.ml"
  )
    | DIVISION of (
# 23 "sintatico.mly"
       (Lexing.position)
# 152 "sintatico.ml"
  )
    | DIFFERENT of (
# 26 "sintatico.mly"
       (Lexing.position)
# 157 "sintatico.ml"
  )
    | COMA of (
# 14 "sintatico.mly"
       (Lexing.position)
# 162 "sintatico.ml"
  )
    | COLON of (
# 14 "sintatico.mly"
       (Lexing.position)
# 167 "sintatico.ml"
  )
    | CLOSE_PARENTHESIS of (
# 16 "sintatico.mly"
       (Lexing.position)
# 172 "sintatico.ml"
  )
    | CLOSE_CURLED_BRACKETS of (
# 31 "sintatico.mly"
       (Lexing.position)
# 177 "sintatico.ml"
  )
    | CLOSE_BRACKETS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 182 "sintatico.ml"
  )
    | CHAR of (
# 17 "sintatico.mly"
       (Lexing.position)
# 187 "sintatico.ml"
  )
    | BOOL of (
# 17 "sintatico.mly"
       (Lexing.position)
# 192 "sintatico.ml"
  )
    | ATTRIBUTION of (
# 19 "sintatico.mly"
       (Lexing.position)
# 197 "sintatico.ml"
  )
    | ARGS_SCAN of (
# 33 "sintatico.mly"
       (Lexing.position)
# 202 "sintatico.ml"
  )
    | ARGF_SCAN of (
# 33 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | ARGD_SCAN of (
# 33 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
    | AND of (
# 28 "sintatico.mly"
       (Lexing.position)
# 217 "sintatico.ml"
  )
    | ADDRESS of (
# 33 "sintatico.mly"
       (Lexing.position)
# 222 "sintatico.ml"
  )
    | ADDITION of (
# 20 "sintatico.mly"
       (Lexing.position)
# 227 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 243 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ADDITION _ ->
          44
      | ADDRESS _ ->
          43
      | AND _ ->
          42
      | ARGD_SCAN _ ->
          41
      | ARGF_SCAN _ ->
          40
      | ARGS_SCAN _ ->
          39
      | ATTRIBUTION _ ->
          38
      | BOOL _ ->
          37
      | CHAR _ ->
          36
      | CLOSE_BRACKETS _ ->
          35
      | CLOSE_CURLED_BRACKETS _ ->
          34
      | CLOSE_PARENTHESIS _ ->
          33
      | COLON _ ->
          32
      | COMA _ ->
          31
      | DIFFERENT _ ->
          30
      | DIVISION _ ->
          29
      | ELSE _ ->
          28
      | EOF ->
          27
      | EQUALS _ ->
          26
      | FLOAT _ ->
          25
      | FOR _ ->
          24
      | ID _ ->
          23
      | IF _ ->
          22
      | INTEGER _ ->
          21
      | LESS_EQUAL_THAN _ ->
          20
      | LESS_THAN _ ->
          19
      | LITERAL_BOOL _ ->
          18
      | LITERAL_CHAR _ ->
          17
      | LITERAL_FLOAT _ ->
          16
      | LITERAL_INTEGER _ ->
          15
      | LITERAL_STRING _ ->
          14
      | MORE_EQUAL_THAN _ ->
          13
      | MORE_THAN _ ->
          12
      | MULTIPLICATION _ ->
          11
      | OPEN_BRACKETS _ ->
          10
      | OPEN_CURLED_BRACKETS _ ->
          9
      | OPEN_PARENTHESIS _ ->
          8
      | OR _ ->
          7
      | PRINTF _ ->
          6
      | RETURN _ ->
          5
      | SCANF _ ->
          4
      | SEMICOLON _ ->
          3
      | SUBTRACTION _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ADDITION _v ->
          Obj.repr _v
      | ADDRESS _v ->
          Obj.repr _v
      | AND _v ->
          Obj.repr _v
      | ARGD_SCAN _v ->
          Obj.repr _v
      | ARGF_SCAN _v ->
          Obj.repr _v
      | ARGS_SCAN _v ->
          Obj.repr _v
      | ATTRIBUTION _v ->
          Obj.repr _v
      | BOOL _v ->
          Obj.repr _v
      | CHAR _v ->
          Obj.repr _v
      | CLOSE_BRACKETS _v ->
          Obj.repr _v
      | CLOSE_CURLED_BRACKETS _v ->
          Obj.repr _v
      | CLOSE_PARENTHESIS _v ->
          Obj.repr _v
      | COLON _v ->
          Obj.repr _v
      | COMA _v ->
          Obj.repr _v
      | DIFFERENT _v ->
          Obj.repr _v
      | DIVISION _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | EQUALS _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | INTEGER _v ->
          Obj.repr _v
      | LESS_EQUAL_THAN _v ->
          Obj.repr _v
      | LESS_THAN _v ->
          Obj.repr _v
      | LITERAL_BOOL _v ->
          Obj.repr _v
      | LITERAL_CHAR _v ->
          Obj.repr _v
      | LITERAL_FLOAT _v ->
          Obj.repr _v
      | LITERAL_INTEGER _v ->
          Obj.repr _v
      | LITERAL_STRING _v ->
          Obj.repr _v
      | MORE_EQUAL_THAN _v ->
          Obj.repr _v
      | MORE_THAN _v ->
          Obj.repr _v
      | MULTIPLICATION _v ->
          Obj.repr _v
      | OPEN_BRACKETS _v ->
          Obj.repr _v
      | OPEN_CURLED_BRACKETS _v ->
          Obj.repr _v
      | OPEN_PARENTHESIS _v ->
          Obj.repr _v
      | OR _v ->
          Obj.repr _v
      | PRINTF _v ->
          Obj.repr _v
      | RETURN _v ->
          Obj.repr _v
      | SCANF _v ->
          Obj.repr _v
      | SEMICOLON _v ->
          Obj.repr _v
      | SUBTRACTION _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000DEFG\000\000\000C\000;4\000\000B\000\000\000\000\000\000>\000\024\000\000\000\000\028\026\027\029\030\000\000\0252\000\002\000\000\000\000!)\000\"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000*\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\018\000\000\000\000\000\019\000\000\017\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\000\000\r\011\004\n\b\t\006\007\012\005\003\000,\000\014\000\000\000\000\0008\0006\021\000\022\000\023\0000\001\000\000<\000.")
  
  and error =
    (45, "N\131\231\208\012\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\002\000\000\000\000\000\000\000\136\t\128\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\002 \006\000\000\000\000\000\000\000\000\000\000\b\000\000@\000\000\000\002t\031>\001`\000\000\000@\000\000 \000\000\002\000\000\000\000\016\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000N\131\227\128 \000\004\000\000\000\000\000 \248@\000\000\001\007\194\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\140\192\129:\017@ \248@\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\004#\002\004\232\005\000\131\225\000\000\001\136\192\129:\017@ \248@\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\240\128\000\000\000\000\000\000\000\000\016| \000\0001\024\016'B(\004\031\b\000\000\012F\004\t\208\138\001\007\194\000\000\003\017\129\002t\"\128A\240\128\000\000\196`@\157\b\160\016| \000\0001\024\016'B(\004\031\b\000\000\012F\004\t\208\138\001\007\194\000\000\003\017\129\002t\"\128A\240\128\000\000\000\000\000\000\000\004#\002\004\200\005\000\000\000\000\000\001\b\192\1292\001@\016\000\000\000\000\157\007\199\000@\000\b\000\000\000\000\000\000\000\000\000\224\000\000\000\004\000\000\000\000\000\000\002\000\131\225\000\000\001\b\192\1292\001D\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\b\002\015\132\000\000\004#\002\004\200\005\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000 \b>\016\000\000\016\140\b\019 \020@\000\000\000\000\000\000\000\000\000\000\016\131\225\000\000\000\128\000\000\000\000\000\000\000\000\000\000b0 L\000P\b\000\000\000\000\000A\240\128\000\000\132`@\153\000\162\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000 \248@\000\000B0 L\128P\004\000\000\000\000'A\241\192\000\000\002\000\000\000\000\000\000\000 \000\000\000\000\000\000\002\000\004\031\b\000\000\012F\004\t\128\n\000\000\002\000\000\000\000\001\000\000\000\000A\240\128\000\000\196`@\152\000\160\016| \000\000!\024\016&@(\002\000\000\000\000\019\160\248\224\b\000\000\000\000\000@\000\000\000\000\000\000\016\140\b\019\001\020\002\015\132\000\000\006#\002\004\192\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\157\007\199 @\000\000\000\000\000\000\024\140\b\019\001\020\000\000\000\000\000\000\000\000\000\004\000N\131\227\152 \000\002\000\000\000\000\019\160\248\224\000\000\000\000\000\000@\000\000\000\000\000\000'A\241\192\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\004\232>|\002\192\000\000\000\000\000\000\000\000\000\000\000\t\208|r\000\000\000\000\000\016\000\000\000\000\000\000\000\019\160\249\244\003\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\003\000\000\000\000\000\000\000\000\000-\000\r\001\004\000\000\000\025\000\000\000\000\000\000\000\003\000\000\000+\000\018\0000\000\t\000\006\000\t\000\000\0000\000\000\000\196\000:\000\196\000\196\000\000\000\000\000\000\000\000\000\000\000\134\000\196\000\000\000\000\000\020\000\000\003&\000\196\000\232\000\196\000\000\000\000\000\196\000\000\000\196\001,\000\196\001p\000\196\001\180\000\196\001\248\000\196\002<\000\196\002\128\000\196\002\196\000\196\000\000\003\146\000\000\003\204\000F\000\196\000V\000?\000*\000\026\000\196\003\244\000p\000\000\000>\0002\000\196\004.\000\154\000\000\000d\000N\000\196\004V\000\162\000\000\000\196\000\164\000\000\003&\000\158\000\196\004\144\000\170\000\000\000\162\000\196\004\184\000\162\000\196\000\166\000\138\000p\000\196\003\146\000\144\000\176\000\196\003\204\000\196\004\242\000\198\000\196\000\152\000\000\003&\000\196\003\244\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\196\000\000\003j\000\000\000\166\000b\000\230\000\196\000\184\000\000\003\002\000\000\000\000\000\190\000\000\000\192\000\000\0000\000\000\000\000\000\196\000\212\000\000\000\003\000\000"), (16, "\000\177\000\026\000\030\000\177\000\177\000\177\000\241\000\177\001\026\0012\001J\000*\000B\000\177\000\177\000\177\000\177\000\177\000F\000N\000\006\000\177\000\177\000\177\000\n\000\185\000\177\000^\000\185\000\185\000\185\0006\000\185\001\001\000R\000\014\000\018\000j\000\185\000\185\000\185\000\185\000\185\000\154\001\014\000\006\000\185\000\185\000\185\000\n\000\217\001\022\001\030\000\217\000\217\000\217\001\"\000\217\000\185\001.\000\014\000\018\0016\000\217\000\217\000\217\000\217\000\217\001:\001\029\001\029\000\217\000\217\000\217\001\029\000\138\000\217\002&\001\029\001\029\001F\001N\001R\000\217\001^\001j\001\029\001v\001\130\001\138\001\150\001\158\001\162\001\029\001\166\001\178\001\029\001\029\001\029\000f\001\029\000\225\001\018\001b\001r\001\029\000n\001\182\001\202\001\029\001\210\001\029\000r\000v\000z\000~\000\130\002\"\000}\000}\001\134\000\134\001\154\000}\002*\000\169\0022\000\170\000}\002F\002N\000\193\000\169\002g\000\000\000}\000\000\000\000\000\000\000\000\000\000\000\000\000}\000\000\000\000\000\182\000}\000}\000\000\000}\000\000\000\006\000\162\000\157\000}\000\n\000\000\000\157\000}\000\000\000}\000\170\000\198\000\201\000\000\000\000\000\014\000\018\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\000\000\000\000\182\000\230\000\157\000\000\000\157\000\000\000\000\000\162\000\149\000\157\000\000\000\000\000\149\000\238\000\000\000\206\000\170\000\149\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\000\000\182\000\149\000\149\000\000\000\149\000\000\000\000\000y\000y\000\149\000\000\000\000\000y\000\149\000\000\000\206\000\170\000y\000\000\000\000\000\000\000\000\000\000\000\000\000y\000\000\000\000\000\000\000\000\000\000\000\000\000y\000\000\000\000\000\182\000y\000y\000\000\000y\000\000\000\000\000\162\000\137\000y\000\000\000\000\000\137\000y\000\000\000y\000\170\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\182\000\137\000\137\000\000\000\137\000\000\000\000\000\162\000\141\000\137\000\000\000\000\000\141\000\137\000\000\000\206\000\170\000\198\000\000\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\182\000\141\000\141\000\000\000\141\000\000\000\000\000\162\000\145\000\141\000\000\000\000\000\145\000\141\000\000\000\206\000\170\000\198\000\000\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\182\000\145\000\145\000\000\000\145\000\000\000\000\000\162\000\153\000\145\000\000\000\000\000\153\000\145\000\000\000\206\000\170\000\198\000\000\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\000\000\000\000\182\000\230\000\153\000f\000\153\000\000\001\018\001b\001r\000\153\000n\000\000\000\000\000\153\000\000\000\206\000r\000v\000z\000~\000\130\000\000\000\162\000\229\001\134\000\134\001\154\000\190\000\000\000\000\000\000\000\170\000\198\000\000\000\000\000\000\000\209\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\000\000\000\000\182\000\230\000\246\000\000\000\249\000\000\000\000\000\161\002\026\001\218\000\000\000\000\000\161\000\238\000\000\000\206\000\161\000\161\000\000\000\000\000\000\000\000\000\000\000\000\000\161\000\000\000\000\000\162\001\174\000\000\000\000\000\161\000\190\000\000\000\161\000\161\000\170\000\198\000\000\000\000\000\000\000\000\000\000\000\161\000\214\000\000\000\000\000\161\000\000\000\161\000\000\000\222\000\000\000\000\000\182\000\230\000\162\001\190\001\002\000\000\000\000\000\190\000\000\000\000\000\000\000\170\000\198\000\238\000\000\000\206\000\000\000\000\000\000\000\214\000\000\000\000\000\162\001\226\000\000\000\000\000\222\000\190\000\000\000\182\000\230\000\170\000\198\001\n\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\238\000\000\000\206\000\000\000\222\000\000\000\000\000\182\000\230\000\162\000\000\001*\000\000\000\000\000\190\000\000\000\000\000\000\000\170\000\198\000\238\000\000\000\206\000\000\000\000\000\000\000\214\000\000\000\000\000\162\000\000\000\000\000\000\000\222\000\190\000\000\000\182\000\230\000\170\000\198\001B\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\238\000\000\000\206\000\000\000\222\000\000\000\000\000\182\000\230\000\162\000\000\001Z\000\000\000\000\000\190\000\000\000\000\000\000\000\170\000\198\000\238\000\000\000\206\000\000\000\000\000\000\000\214\000\000\000\000\000\162\000\000\000\000\000\000\000\222\000\190\000\000\000\182\000\230\000\170\000\198\001~\000\000\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\238\000\000\000\206\000\000\000\222\000\000\000\000\000\182\000\230\000\162\000\000\001\146\000\000\000\000\000\190\000\000\000\000\000\000\000\170\000\198\000\238\000\000\000\206\000\000\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\000\000\000\000\182\000\230\000\000\000\000\001\198\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\238\000\000\000\206"))
  
  and lhs =
    (8, "\000\031\030\030\030\030\030\030\030\030\030\030\029\028\027\026\025\024\023\022\021\020\019\018\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\016\016\015\015\014\014\r\r\012\012\011\011\n\n\t\t\b\007\006\006\005\005\004\004\003\002\002\002\002\001")
  
  and goto =
    ((16, "\000^\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\001 \000\004\000\000\000\006\000\000\000\000\000\000\000\003\000\000\000\198\001\136\000\000\000\000\000\000\000\000\000\000\000\000\000\228\000\000\000\000\000\000\000\000\000\000\001\138\000\000\001\140\000\000\000\000\001\142\000\000\001\146\000\000\001\148\000\000\001\150\000\000\001\152\000\000\001\190\000\000\001\192\000\000\001\194\000\000\001~\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\001\204\000\000\000\000\000\000\000\000\000\000\001\214\000\000\000\000\000\000\000\000\000\000\001\216\000\000\000\000\000\000\001\128\000\000\000\000\000\000\000\000\001\228\000\000\000\000\000\000\000\000\001\230\000\000\000\000\000^\000\000\000\000\000\000\001\234\000\000\000\000\000\000\001\238\000\000\001\240\000\000\000\000\000\128\000\000\000\000\000\000\002\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\162\000\000\000\000\000\000\000\000\000\004\000\000\000\224\000\000\000\000\001\030\000\000\000\000\000\000\000\000\000\000\000\000\001\128\000\000\000\000\001@\000\000\000\000\000 \000\000"), (8, "$\t\n\012\t\n\015\r\023\022\r\016\144\000\000\147v$\006z{|}~\127\128\129\130\131\132\134\156\145v\000\155z{|}~\127\128\129\130\131\132\134$\006\000\000\000\000\151\000\000\000\136\000\000\000\152\000v$\155z{|}~\127\128\129\130\131\142\134\000tv$\000z{|}~\127\128\129\130\131\132\134\000\133v\000$z{|}~\127\128\129\130\131\132\134$\000$B\000\000%\000\000\000\140\000\000\000&\000v-(z{|}~\127\128\129\130\131\142\134$-\t\019\000\000\000\000\000\000\143\000\000\000\025\000v$\149z{|}~\127\128\129\130\131\142\134\000\153v\000\000z{|}~\127\128\129\130\131\132\134$$\t\019?$$$$Z$$$$\150\000(\\\149\000\000@*,/\0001357--$$$----$----$$\000\0009;=$$\000$J$$\000\000PV---\000\000_d-k\000oq--$\000\000\000\000--\000-\000--\000\000\000\000x\000\000\000\000\000\000\000\000\000\000\000\000\000-"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs0;
            MenhirLib.EngineTypes.startp = _startpos_xs0_;
            MenhirLib.EngineTypes.endp = _endpos_xs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = nome;
                MenhirLib.EngineTypes.startp = _startpos_nome_;
                MenhirLib.EngineTypes.endp = _endpos_nome_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 483 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 489 "sintatico.ml"
        ) = Obj.magic _2 in
        let nome : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 494 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
          
# 206 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 504 "sintatico.ml"
          
        in
        
# 157 "sintatico.mly"
                                                                                          (
             ExpChamada  (nome, args))
# 511 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 86 "sintatico.mly"
                              ( c )
# 536 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 87 "sintatico.mly"
                              ( c )
# 561 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 88 "sintatico.mly"
                              ( c )
# 586 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 89 "sintatico.mly"
                              ( c )
# 611 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 90 "sintatico.mly"
                              ( c )
# 636 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 91 "sintatico.mly"
                              ( c )
# 661 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 92 "sintatico.mly"
                              ( c )
# 686 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 93 "sintatico.mly"
                              ( c )
# 711 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 94 "sintatico.mly"
                              ( c )
# 736 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 95 "sintatico.mly"
                              ( c )
# 761 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = dir;
            MenhirLib.EngineTypes.startp = _startpos_dir_;
            MenhirLib.EngineTypes.endp = _endpos_dir_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = esq;
                MenhirLib.EngineTypes.startp = _startpos_esq_;
                MenhirLib.EngineTypes.endp = _endpos_esq_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 797 "sintatico.ml"
        ) = Obj.magic _4 in
        let dir : (Sast.expressao) = Obj.magic dir in
        let _2 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 803 "sintatico.ml"
        ) = Obj.magic _2 in
        let esq : (Sast.expressao) = Obj.magic esq in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_esq_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 97 "sintatico.mly"
                                                                      (
      CmdAtrib (esq,dir)
)
# 814 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 840 "sintatico.ml"
        ) = Obj.magic _2 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 109 "sintatico.mly"
                                       ( CmdChamada exp )
# 849 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _15;
          MenhirLib.EngineTypes.startp = _startpos__15_;
          MenhirLib.EngineTypes.endp = _endpos__15_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _13;
              MenhirLib.EngineTypes.startp = _startpos__13_;
              MenhirLib.EngineTypes.endp = _endpos__13_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _12;
                MenhirLib.EngineTypes.startp = _startpos__12_;
                MenhirLib.EngineTypes.endp = _endpos__12_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = fin;
                  MenhirLib.EngineTypes.startp = _startpos_fin_;
                  MenhirLib.EngineTypes.endp = _endpos_fin_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _10;
                    MenhirLib.EngineTypes.startp = _startpos__10_;
                    MenhirLib.EngineTypes.endp = _endpos__10_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = valor;
                      MenhirLib.EngineTypes.startp = _startpos_valor_;
                      MenhirLib.EngineTypes.endp = _endpos_valor_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _8;
                        MenhirLib.EngineTypes.startp = _startpos__8_;
                        MenhirLib.EngineTypes.endp = _endpos__8_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = testeID;
                          MenhirLib.EngineTypes.startp = _startpos_testeID_;
                          MenhirLib.EngineTypes.endp = _endpos_testeID_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = _6;
                            MenhirLib.EngineTypes.startp = _startpos__6_;
                            MenhirLib.EngineTypes.endp = _endpos__6_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.semv = init;
                              MenhirLib.EngineTypes.startp = _startpos_init_;
                              MenhirLib.EngineTypes.endp = _endpos_init_;
                              MenhirLib.EngineTypes.next = {
                                MenhirLib.EngineTypes.semv = _4;
                                MenhirLib.EngineTypes.startp = _startpos__4_;
                                MenhirLib.EngineTypes.endp = _endpos__4_;
                                MenhirLib.EngineTypes.next = {
                                  MenhirLib.EngineTypes.semv = v;
                                  MenhirLib.EngineTypes.startp = _startpos_v_;
                                  MenhirLib.EngineTypes.endp = _endpos_v_;
                                  MenhirLib.EngineTypes.next = {
                                    MenhirLib.EngineTypes.semv = _2;
                                    MenhirLib.EngineTypes.startp = _startpos__2_;
                                    MenhirLib.EngineTypes.endp = _endpos__2_;
                                    MenhirLib.EngineTypes.next = {
                                      MenhirLib.EngineTypes.state = _menhir_s;
                                      MenhirLib.EngineTypes.semv = _1;
                                      MenhirLib.EngineTypes.startp = _startpos__1_;
                                      MenhirLib.EngineTypes.endp = _endpos__1_;
                                      MenhirLib.EngineTypes.next = _menhir_stack;
                                    };
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _15 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 940 "sintatico.ml"
        ) = Obj.magic _15 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _13 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 946 "sintatico.ml"
        ) = Obj.magic _13 in
        let _12 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 951 "sintatico.ml"
        ) = Obj.magic _12 in
        let fin : (Sast.expressao) = Obj.magic fin in
        let _10 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 957 "sintatico.ml"
        ) = Obj.magic _10 in
        let valor : (Sast.expressao) = Obj.magic valor in
        let _8 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 963 "sintatico.ml"
        ) = Obj.magic _8 in
        let testeID : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 968 "sintatico.ml"
        ) = Obj.magic testeID in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 973 "sintatico.ml"
        ) = Obj.magic _6 in
        let init : (Sast.expressao) = Obj.magic init in
        let _4 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 979 "sintatico.ml"
        ) = Obj.magic _4 in
        let v : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 984 "sintatico.ml"
        ) = Obj.magic v in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 989 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 35 "sintatico.mly"
       (Lexing.position)
# 994 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__15_ in
        let _v : (Sast.expressao Ast.comando) = 
# 124 "sintatico.mly"
 ( 
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
	)
# 1022 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = exp;
              MenhirLib.EngineTypes.startp = _startpos_exp_;
              MenhirLib.EngineTypes.endp = _endpos_exp_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1063 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1068 "sintatico.ml"
        ) = Obj.magic _4 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1074 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 32 "sintatico.mly"
       (Lexing.position)
# 1079 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 113 "sintatico.mly"
                                                                                 ( CmdPrint exp )
# 1087 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1118 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao option) = Obj.magic e in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 1124 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 111 "sintatico.mly"
                                               ( CmdRetorno e)
# 1132 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = exp;
              MenhirLib.EngineTypes.startp = _startpos_exp_;
              MenhirLib.EngineTypes.endp = _endpos_exp_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _3;
                    MenhirLib.EngineTypes.startp = _startpos__3_;
                    MenhirLib.EngineTypes.endp = _endpos__3_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1188 "sintatico.ml"
        ) = Obj.magic _8 in
        let _7 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1193 "sintatico.ml"
        ) = Obj.magic _7 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _5 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1199 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1204 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1209 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1214 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1219 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sast.expressao Ast.comando) = 
# 117 "sintatico.mly"
                                                                                                           ( CmdScanFloat exp )
# 1227 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = exp;
              MenhirLib.EngineTypes.startp = _startpos_exp_;
              MenhirLib.EngineTypes.endp = _endpos_exp_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _3;
                    MenhirLib.EngineTypes.startp = _startpos__3_;
                    MenhirLib.EngineTypes.endp = _endpos__3_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1283 "sintatico.ml"
        ) = Obj.magic _8 in
        let _7 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1288 "sintatico.ml"
        ) = Obj.magic _7 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _5 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1294 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1299 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1304 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1309 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1314 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sast.expressao Ast.comando) = 
# 115 "sintatico.mly"
                                                                                                         ( CmdScanInt exp )
# 1322 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = exp;
              MenhirLib.EngineTypes.startp = _startpos_exp_;
              MenhirLib.EngineTypes.endp = _endpos_exp_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _3;
                    MenhirLib.EngineTypes.startp = _startpos__3_;
                    MenhirLib.EngineTypes.endp = _endpos__3_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1378 "sintatico.ml"
        ) = Obj.magic _8 in
        let _7 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1383 "sintatico.ml"
        ) = Obj.magic _7 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _5 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1389 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1394 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1399 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1404 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1409 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sast.expressao Ast.comando) = 
# 119 "sintatico.mly"
                                                                                                            ( CmdScanString exp )
# 1417 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = senao;
          MenhirLib.EngineTypes.startp = _startpos_senao_;
          MenhirLib.EngineTypes.endp = _endpos_senao_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = teste;
                    MenhirLib.EngineTypes.startp = _startpos_teste_;
                    MenhirLib.EngineTypes.endp = _endpos_teste_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let _7 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 1474 "sintatico.ml"
        ) = Obj.magic _7 in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _5 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 1480 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1485 "sintatico.ml"
        ) = Obj.magic _4 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1491 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1496 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_senao_ in
        let _v : (Sast.expressao Ast.comando) = 
# 105 "sintatico.mly"
             (
              CmdSe (teste, entao, senao)
            )
# 1506 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _4;
                MenhirLib.EngineTypes.startp = _startpos__4_;
                MenhirLib.EngineTypes.endp = _endpos__4_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = exp;
                  MenhirLib.EngineTypes.startp = _startpos_exp_;
                  MenhirLib.EngineTypes.endp = _endpos_exp_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _2;
                    MenhirLib.EngineTypes.startp = _startpos__2_;
                    MenhirLib.EngineTypes.endp = _endpos__2_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _7 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 1557 "sintatico.ml"
        ) = Obj.magic _7 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _5 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 1563 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1568 "sintatico.ml"
        ) = Obj.magic _4 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1574 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 34 "sintatico.mly"
       (Lexing.position)
# 1579 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.comando) = 
# 121 "sintatico.mly"
                                                                                                                             ( CmdWhile (exp, cs) )
# 1587 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _9;
          MenhirLib.EngineTypes.startp = _startpos__9_;
          MenhirLib.EngineTypes.endp = _endpos__9_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = ds;
              MenhirLib.EngineTypes.startp = _startpos_ds_;
              MenhirLib.EngineTypes.endp = _endpos_ds_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _6;
                MenhirLib.EngineTypes.startp = _startpos__6_;
                MenhirLib.EngineTypes.endp = _endpos__6_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _5;
                  MenhirLib.EngineTypes.startp = _startpos__5_;
                  MenhirLib.EngineTypes.endp = _endpos__5_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = xs0;
                    MenhirLib.EngineTypes.startp = _startpos_xs0_;
                    MenhirLib.EngineTypes.endp = _endpos_xs0_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _3;
                      MenhirLib.EngineTypes.startp = _startpos__3_;
                      MenhirLib.EngineTypes.endp = _endpos__3_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = nome;
                        MenhirLib.EngineTypes.startp = _startpos_nome_;
                        MenhirLib.EngineTypes.endp = _endpos_nome_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _menhir_s;
                          MenhirLib.EngineTypes.semv = tret;
                          MenhirLib.EngineTypes.startp = _startpos_tret_;
                          MenhirLib.EngineTypes.endp = _endpos_tret_;
                          MenhirLib.EngineTypes.next = _menhir_stack;
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _9 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 1648 "sintatico.ml"
        ) = Obj.magic _9 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let _6 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 1655 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1660 "sintatico.ml"
        ) = Obj.magic _5 in
        let xs0 : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs0 in
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1666 "sintatico.ml"
        ) = Obj.magic _3 in
        let nome : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1671 "sintatico.ml"
        ) = Obj.magic nome in
        let tret : (Ast.tipo) = Obj.magic tret in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_tret_ in
        let _endpos = _endpos__9_ in
        let _v : (Sast.expressao Ast.funcao) = let formais =
          let xs = xs0 in
          
# 206 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1682 "sintatico.ml"
          
        in
        
# 65 "sintatico.mly"
                        (
    DecFun {
      fn_nome = nome;
      fn_tiporet = tret ;
      fn_formais = formais;
      fn_locais = List.flatten ds;
      fn_corpo = cs
    }
 )
# 1696 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = ids;
            MenhirLib.EngineTypes.startp = _startpos_ids_;
            MenhirLib.EngineTypes.endp = _endpos_ids_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = t;
              MenhirLib.EngineTypes.startp = _startpos_t_;
              MenhirLib.EngineTypes.endp = _endpos_t_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1727 "sintatico.ml"
        ) = Obj.magic _3 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.declaracao list) = 
# 57 "sintatico.mly"
                                                          (
                   List.map (fun id -> DecVar (id,t)) ids  )
# 1738 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 147 "sintatico.mly"
                      ( ExpVar v    )
# 1763 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 1784 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 148 "sintatico.mly"
                                  ( ExpInt i    )
# 1792 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (
# 9 "sintatico.mly"
       (float * Lexing.position)
# 1813 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) = 
# 149 "sintatico.mly"
                                ( ExpFloat f    )
# 1821 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 11 "sintatico.mly"
       (string * Lexing.position)
# 1842 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 150 "sintatico.mly"
                              ( ExpString s )
# 1850 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (
# 12 "sintatico.mly"
       (char * Lexing.position)
# 1871 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 151 "sintatico.mly"
                            ( ExpChar c )
# 1879 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (
# 13 "sintatico.mly"
       (bool * Lexing.position)
# 1900 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 152 "sintatico.mly"
                              ( ExpBool b   )
# 1908 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1940 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 161 "sintatico.mly"
                    ( (Mais, pos)  )
# 1951 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1957 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1989 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 162 "sintatico.mly"
                             ( (Menos, pos) )
# 2000 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2006 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 2038 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 163 "sintatico.mly"
                                 ( (Mult, pos)  )
# 2049 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2055 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 2087 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 164 "sintatico.mly"
                            ( (Div, pos)   )
# 2098 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2104 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 2136 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 165 "sintatico.mly"
                           ( (Menor, pos) )
# 2147 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2153 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 2185 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 166 "sintatico.mly"
                        ( (Igual, pos) )
# 2196 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2202 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 2234 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 167 "sintatico.mly"
                           ( (Difer, pos) )
# 2245 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2251 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 2283 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 168 "sintatico.mly"
                           ( (Maior, pos) )
# 2294 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2300 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 28 "sintatico.mly"
       (Lexing.position)
# 2332 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 169 "sintatico.mly"
                      ( (E, pos)     )
# 2343 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2349 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 2381 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 170 "sintatico.mly"
                    ( (Ou, pos)    )
# 2392 "sintatico.ml"
          
        in
        
# 153 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2398 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 154 "sintatico.mly"
                        ( c )
# 2423 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2454 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2460 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 155 "sintatico.mly"
                                                    ( e )
# 2468 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos) = 
# 185 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2486 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 187 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2517 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.funcoes) = 
# 185 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2535 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.funcoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) = 
# 187 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2566 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.declaracao list list) = 
# 185 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2584 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.declaracao list list) = Obj.magic xs in
        let x : (Ast.declaracao list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declaracao list list) = 
# 187 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2615 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.expressoes) = 
# 128 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2633 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.expressoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 130 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x )
# 2658 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 128 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2676 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 130 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x )
# 2701 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 195 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2726 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 197 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2757 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos option) = 
# 100 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( None )
# 2775 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _40;
          MenhirLib.EngineTypes.startp = _startpos__40_;
          MenhirLib.EngineTypes.endp = _endpos__40_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs0;
            MenhirLib.EngineTypes.startp = _startpos_cs0_;
            MenhirLib.EngineTypes.endp = _endpos_cs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _20;
              MenhirLib.EngineTypes.startp = _startpos__20_;
              MenhirLib.EngineTypes.endp = _endpos__20_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _10;
                MenhirLib.EngineTypes.startp = _startpos__10_;
                MenhirLib.EngineTypes.endp = _endpos__10_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _40 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 2811 "sintatico.ml"
        ) = Obj.magic _40 in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _20 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 2817 "sintatico.ml"
        ) = Obj.magic _20 in
        let _10 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2822 "sintatico.ml"
        ) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos__40_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let _4 = _40 in
          let cs = cs0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 104 "sintatico.mly"
                                                                                        (cs)
# 2835 "sintatico.ml"
          
        in
        
# 102 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 2841 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao option) = 
# 100 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( None )
# 2859 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao option) = 
# 102 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 2884 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = nome;
          MenhirLib.EngineTypes.startp = _startpos_nome_;
          MenhirLib.EngineTypes.endp = _endpos_nome_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let nome : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2910 "sintatico.ml"
        ) = Obj.magic nome in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_nome_ in
        let _v : (Ast.ident Ast.pos * Ast.tipo) = 
# 75 "sintatico.mly"
                          ( (nome, t) )
# 2919 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = fs;
              MenhirLib.EngineTypes.startp = _startpos_fs_;
              MenhirLib.EngineTypes.endp = _endpos_fs_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_fs_ in
        let _endpos = _endpos__3_ in
        let _v : (
# 46 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 2956 "sintatico.ml"
        ) = 
# 53 "sintatico.mly"
              ( Programa (fs, cs) )
# 2960 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2981 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2989 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.ident Ast.pos list) = Obj.magic xs in
        let _2 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3021 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3026 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3034 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 215 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 3059 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3091 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3100 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 215 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 3125 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs in
        let _2 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3157 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 217 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3166 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) = 
# 77 "sintatico.mly"
                      ( t )
# 3191 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3212 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 80 "sintatico.mly"
                       ( TipoInt    )
# 3220 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3241 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 81 "sintatico.mly"
                        ( TipoFloat )
# 3249 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3270 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 82 "sintatico.mly"
                       ( TipoChar )
# 3278 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3299 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 83 "sintatico.mly"
                   ( TipoBool   )
# 3307 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3328 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 173 "sintatico.mly"
                     ( VarSimples x )
# 3336 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 46 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3367 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 46 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3377 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
  


# 3386 "sintatico.ml"
