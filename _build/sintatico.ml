
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20180530

module MenhirBasics = struct
  
  exception Error
  
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
    | LITERAL_STRING of (
# 7 "sintatico.mly"
       (string)
# 40 "sintatico.ml"
  )
    | LITERAL_INTEGER of (
# 8 "sintatico.mly"
       (int)
# 45 "sintatico.ml"
  )
    | LITERAL_FLOAT of (
# 9 "sintatico.mly"
       (float)
# 50 "sintatico.ml"
  )
    | LITERAL_CHAR of (
# 10 "sintatico.mly"
       (char)
# 55 "sintatico.ml"
  )
    | LITERAL_BOOL of (
# 11 "sintatico.mly"
       (bool)
# 60 "sintatico.ml"
  )
    | LESS_THAN
    | LESS_EQUAL_THAN
    | INTEGER
    | INCREMENT
    | IF
    | ID of (
# 6 "sintatico.mly"
       (string)
# 70 "sintatico.ml"
  )
    | HEADER_FILE of (
# 27 "sintatico.mly"
       (string)
# 75 "sintatico.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "sintatico.mly"
  
	open Sintatico_arvore


# 116 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ADDITION ->
          62
      | ADDRESS ->
          61
      | ADD_ATTRIBUTION ->
          60
      | AND ->
          59
      | ATTRIBUTION ->
          58
      | BOOL ->
          57
      | BREAK ->
          56
      | CASE ->
          55
      | CHAR ->
          54
      | CLOSE_BRACKETS ->
          53
      | CLOSE_CURLED_BRACKETS ->
          52
      | CLOSE_PARENTHESIS ->
          51
      | COLON ->
          50
      | COMA ->
          49
      | DECREMENT ->
          48
      | DEFAULT ->
          47
      | DIFFERENT ->
          46
      | DIVISION ->
          45
      | DIV_ATTRIBUTION ->
          44
      | DO ->
          43
      | ELSE ->
          42
      | EOF ->
          41
      | EQUALS ->
          40
      | FALSE ->
          39
      | FLOAT ->
          38
      | FOR ->
          37
      | HEADER_FILE _ ->
          36
      | ID _ ->
          35
      | IF ->
          34
      | INCREMENT ->
          33
      | INTEGER ->
          32
      | LESS_EQUAL_THAN ->
          31
      | LESS_THAN ->
          30
      | LITERAL_BOOL _ ->
          29
      | LITERAL_CHAR _ ->
          28
      | LITERAL_FLOAT _ ->
          27
      | LITERAL_INTEGER _ ->
          26
      | LITERAL_STRING _ ->
          25
      | MAIN ->
          24
      | MODULE ->
          23
      | MORE_EQUAL_THAN ->
          22
      | MORE_THAN ->
          21
      | MULTIPLICATION ->
          20
      | MUL_ATTRIBUTION ->
          19
      | NOT ->
          18
      | NULL ->
          17
      | OPEN_BRACKETS ->
          16
      | OPEN_CURLED_BRACKETS ->
          15
      | OPEN_PARENTHESIS ->
          14
      | OR ->
          13
      | PRINTF ->
          12
      | RETURN ->
          11
      | SCANF ->
          10
      | SEMICOLON ->
          9
      | SINGLE_QUOTE ->
          8
      | STRING ->
          7
      | SUBTRACTION ->
          6
      | SUB_ATTRIBUTION ->
          5
      | SWITCH ->
          4
      | TRUE ->
          3
      | VOID ->
          2
      | WHILE ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ADDITION ->
          Obj.repr ()
      | ADDRESS ->
          Obj.repr ()
      | ADD_ATTRIBUTION ->
          Obj.repr ()
      | AND ->
          Obj.repr ()
      | ATTRIBUTION ->
          Obj.repr ()
      | BOOL ->
          Obj.repr ()
      | BREAK ->
          Obj.repr ()
      | CASE ->
          Obj.repr ()
      | CHAR ->
          Obj.repr ()
      | CLOSE_BRACKETS ->
          Obj.repr ()
      | CLOSE_CURLED_BRACKETS ->
          Obj.repr ()
      | CLOSE_PARENTHESIS ->
          Obj.repr ()
      | COLON ->
          Obj.repr ()
      | COMA ->
          Obj.repr ()
      | DECREMENT ->
          Obj.repr ()
      | DEFAULT ->
          Obj.repr ()
      | DIFFERENT ->
          Obj.repr ()
      | DIVISION ->
          Obj.repr ()
      | DIV_ATTRIBUTION ->
          Obj.repr ()
      | DO ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQUALS ->
          Obj.repr ()
      | FALSE ->
          Obj.repr ()
      | FLOAT ->
          Obj.repr ()
      | FOR ->
          Obj.repr ()
      | HEADER_FILE _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | INCREMENT ->
          Obj.repr ()
      | INTEGER ->
          Obj.repr ()
      | LESS_EQUAL_THAN ->
          Obj.repr ()
      | LESS_THAN ->
          Obj.repr ()
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
      | MAIN ->
          Obj.repr ()
      | MODULE ->
          Obj.repr ()
      | MORE_EQUAL_THAN ->
          Obj.repr ()
      | MORE_THAN ->
          Obj.repr ()
      | MULTIPLICATION ->
          Obj.repr ()
      | MUL_ATTRIBUTION ->
          Obj.repr ()
      | NOT ->
          Obj.repr ()
      | NULL ->
          Obj.repr ()
      | OPEN_BRACKETS ->
          Obj.repr ()
      | OPEN_CURLED_BRACKETS ->
          Obj.repr ()
      | OPEN_PARENTHESIS ->
          Obj.repr ()
      | OR ->
          Obj.repr ()
      | PRINTF ->
          Obj.repr ()
      | RETURN ->
          Obj.repr ()
      | SCANF ->
          Obj.repr ()
      | SEMICOLON ->
          Obj.repr ()
      | SINGLE_QUOTE ->
          Obj.repr ()
      | STRING ->
          Obj.repr ()
      | SUBTRACTION ->
          Obj.repr ()
      | SUB_ATTRIBUTION ->
          Obj.repr ()
      | SWITCH ->
          Obj.repr ()
      | TRUE ->
          Obj.repr ()
      | VOID ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000C\001\000\000\000\000KLMN\000\004\000\000H\000\000\000\000\000\000\000-*+,.\000\000\000\000\000\000\000\0004=\0005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\011/\000<\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\018\000\000\000\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\r\000\000\000\000\000\000\014\000\000#\029\031\026!\025 \030\027\028\024\023$\000\000\000\000\015\000\000\000\000\000'(\016\000\000\b\000\000\000\000\007\000\000\000%\000\021\000\n\000\022\000>G\000\000\000\000\000\000\000\000\000\000?\000F\000A")
  
  and error =
    (63, "\000\000\000\000\138@\002@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\018\000\018\000\000\000\b\001\000\000\000\000\000@\000\000\000\000\000\000\000\000\000 \128\004\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\n\000\000\000\000\000 \128\000\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\002\000\000\000\000\000\001 \224\000\002\216@)\000\000\016\000\000\000\000\000\000\000\"\007\193\000\000\000\000\000D\015\130\000\000\000\000\000\136\031\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\175\224\224;ig\173 \000D\015\130\000\002\000\000\000\000\000\000\000\020\000\000\001\016>\b\000\000\000\002\004\014\003\000\134P\018\000\004@\248 \000\000\001+\2408\014\218Y\235H\000\017\003\224\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\136\031\004\000\000\000\000\000\000\000\000\000\000\000\000\002 |\016\000\000\000\149\248\028\007m,\245\164\000\b\129\240@\000\000\002W\224p\029\180\179\214\144\000\"\007\193\000\000\000\t_\129\192v\210\207Z@\000\136\031\004\000\000\000%~\007\001\219K=i\000\002 |\016\000\000\000\149\248\028\007m,\245\164\000\b\129\240@\000\000\002W\224p\029\180\179\214\144\000\"\007\193\000\000\000\t_\129\192v\210\207Z@\000\136\031\004\000\000\000%~\007\001\219K=i\000\002 |\016\000\000\000\149\248\028\007m,\245\164\b\0168\012\002\025@H\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\129\003\128\192!\132\004\128\000\000\000\000\000\000\000\002\004\014\003\000\134\016\018\000\002\000\000\000\000\000\001 \224\000\002\216@)\000\000\016\000\000\000\000\000\000\000\"\007\193\000\000\000\000@\129\192`\016\194\002@\000@\000\000\000\000\000\000\000\000\000\000\000\128\128\000\130 |\016\000\000\000\000\004@\248 \000\000\000\n\0168\012\002\024\000H\000\000\000\000\000\001\000\004\131\128\000\011a\000,\000\000@\000\000\000\000\000\000\000\136\031\004\000\000\000\001\002\007\001\128C \t\000\000\000\000\000\000\000\004\000\000\000\000 \000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\"\007\193\000\000\000\tO\129\192v\210\195Z@\000\128\000\000\000\000\000\000\001\016>\b\000\b\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\017\003\224\128\000\000\000 @\2240\ba\001 \000 \000\000\000\000\000\018\014\000\000-\132\002\144\000\000\000\000 \000\000\016\000\000\000\000\000\000\000\000\000\004@\248 \000\000\001)\2408\014\218XkH\000\016\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\004\000\016\000\000\000\000\000\000\000\001\016>\b\000\000\000\002D\014\003\000\134\000\018\144p\000\001l \004\128\000\004\000\000\000\000\000\002A\192\000\005\176\128R\000\000\000\000\001\000\000\000\t\015\000\000\022\194\003\\\000\000\136\031\004\000\000\000%>\007\001\219K\ri\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\001\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\"\007\193\000\000\000\000@\129\192`\016\194\002@\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000Hx\000\000\182\016\n\192\144p\000\001l \021\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\001\000\000\000\000\000\000\144p\000\001l \020\128\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\t\015\000\000\022\198\003X\000\000@\000\b\000\000\000$\028\000\000[\b\005 \000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\007\001\128C\016\tH8\000\000\182\016\002\192\000\000\000\000\000\000\001\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\004\000\018\014\000\000-\132\002\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\b\000\000\000\000\000\000\000\000\000\004\016\000\146\000\000\000\000\000\000\001\000\000\000 \000\000\000\000\000\018\014\000\000-\132\000\144\000\b\000\000\000\000\000\000\000\002 |\016\000\000\000\004\136\028\006\001\012\000$\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \144\000\144\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\029\000\000\000\000\000V\000)\000\025\000\196\000\000\000\000\000\000\000\000\000;\000\000\000G\000\196\000\000\000E\000\"\006\142\000*\000Z\000Z\000Z\000\000\000\000\000\000\000\000\000\000\000\003\b\028\0005\000Z\006\182\000Z\000p\000Z\000\000\000\000\000Z\000\000\000Z\000\226\000Z\001T\000Z\001\198\000Z\0028\000Z\002\170\000Z\003\028\000Z\003\142\000Z\004\000\000Z\004r\006\252\000\021\000\000\000\000\007\020\000\000\007Z\000J\006\142\000P\000Z\007r\000\128\000\019\bT\000Z\006\182\000@\006\142\000\138\000Z\004\222\0000\000l\000R\000\000\000Z\004\222\000\162\b\028\000^\000\000\000\178\000Z\007\184\000\178\006\142\000A\000\000\000Z\005J\000\190\000\152\000A\000\214\000Z\006\182\006\142\000\210\006\142\000\184\006\002\000Z\005\182\000\000\000\152\001\000\000\234\000Z\007\208\000\246\000\000\006\142\006\142\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\172\000\246\006\142\000\174\000\000\000\176\006H\000\026\006\142\000\178\000\000\000\000\000\000\000\172\001\018\000\000\004\222\006\142\000\196\001(\000\000\000\226\000\222\006\142\000\000\000\228\000\000\000\019\000\000\000\232\000\000\000\242\000\000\000\000\001\028\001T\000\196\001\012\001V\006\142\001`\000Z\006\252\001\016\000\000\001(\000\000\000V\000\000"), (16, "\000\161\001\130\000\026\000\161\000\022\000\161\0002\000\161\000\161\000\161\000\161\000\161\000\161\000v\000:\001)\000\021\000F\001\005\000\161\000\161\000\161\000\006\000~\001\005\000\t\001\134\001\005\002>\000\161\000\161\000\161\000J\000\161\000\161\000R\000\161\000\161\000!\000\161\001\005\000\242\000\161\001\005\000\161\000\161\001\"\001j\000\161\000\161\000\161\000\161\001\n\000\161\001\018\000\161\000\161\000\201\000\161\000V\000\201\000\161\000\201\000Z\000\201\000\201\000\201\000\201\000\201\000\201\000^\000b\000f\000j\000n\000\018\000\142\000\201\000\201\001\030\000r\000\"\0012\001:\000\253\001F\000\201\000\201\000\201\001J\000\201\000\201\001N\000\201\000\201\001^\000\201\000&\001f\000\201\000*\000\154\000\201\001n\001z\000\201\000\201\000\201\000\201\001\146\000\201\001\150\000\201\000\201\000\189\000\201\001\158\000\189\000\201\000\134\001\174\000\189\000\189\000\189\000\189\000\189\000\189\001\182\001\202\001\206\000\030\001\210\001\222\000\142\000\170\000\186\000\"\002\"\002&\002.\0026\002F\002V\000\194\000\202\000\189\002Z\000\189\000\189\000\017\000\189\000\189\000&\000\210\002j\000*\000\189\002n\000\154\000\218\002v\002z\000\189\000\189\000\189\000\189\002\134\000\189\002\150\000\189\000\189\000\213\000\226\002\158\000\213\000\178\000\134\002\170\000\213\000\213\000\213\000\213\000\213\000\213\002\174\002\182\002\186\002\194\002\206\002\215\000\142\000\213\000\213\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\213\000\213\000\213\000\000\000\213\000\213\000\000\000\213\000\213\000\000\000\213\000\000\000\000\000\213\000\000\000\154\000\213\000\000\000\000\000\213\000\213\000\213\000\213\000\000\000\213\000\000\000\213\000\213\000\197\000\213\000\000\000\197\000\178\000\197\000\000\000\197\000\197\000\197\000\197\000\197\000\197\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\197\000\197\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\197\000\197\000\197\000\000\000\197\000\197\000\000\000\197\000\197\000\000\000\197\000\000\000\000\000\197\000\000\000\154\000\197\000\000\000\000\000\197\000\197\000\197\000\197\000\000\000\197\000\000\000\197\000\197\000\221\000\197\000\000\000\221\000\197\000\134\000\000\000\221\000\221\000\221\000\221\000\221\000\221\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\221\000\221\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\221\000\221\000\000\000\221\000\221\000\000\000\221\000\221\000\000\000\221\000\000\000\000\000\221\000\000\000\154\000\221\000\000\000\000\000\221\000\221\000\221\000\221\000\000\000\221\000\000\000\221\000\221\000\217\000\221\000\000\000\217\000\178\000\134\000\000\000\217\000\217\000\217\000\217\000\217\000\217\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\217\000\217\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\217\000\217\000\217\000\000\000\217\000\217\000\000\000\217\000\217\000\000\000\217\000\000\000\000\000\217\000\000\000\154\000\217\000\000\000\000\000\217\000\217\000\217\000\217\000\000\000\217\000\000\000\217\000\217\000\225\000\217\000\000\000\225\000\178\000\134\000\000\000\225\000\225\000\225\000\225\000\225\000\225\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\225\000\225\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\225\000\225\000\225\000\000\000\225\000\225\000\000\000\225\000\225\000\000\000\225\000\000\000\000\000\225\000\000\000\154\000\225\000\000\000\000\000\225\000\225\000\225\000\225\000\000\000\225\000\000\000\225\000\225\000\229\000\225\000\000\000\229\000\178\000\134\000\000\000\229\000\229\000\229\000\229\000\229\000\229\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\229\000\229\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\229\000\229\000\229\000\000\000\229\000\229\000\000\000\229\000\229\000\000\000\229\000\000\000\000\000\229\000\000\000\154\000\229\000\000\000\000\000\229\000\229\000\229\000\229\000\000\000\229\000\000\000\229\000\229\000\233\000\229\000\000\000\233\000\178\000\134\000\000\000\233\000\233\000\233\000\233\000\233\000\233\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\233\000\233\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\233\000\233\000\000\000\233\000\233\000\000\000\233\000\233\000\000\000\233\000\000\000\000\000\233\000\000\000\154\000\233\000\000\000\000\000\233\000\233\000\233\000\233\000\000\000\233\000\000\000\233\000\233\000\193\000\233\000\000\000\193\000\178\000\134\000\000\000\193\000\193\000\193\000\193\000\193\000\193\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\194\000\202\000\193\000\000\000\193\000\193\000\000\000\193\000\193\000\000\000\210\000\000\000\000\000\193\000\000\000\154\000\218\000\000\000\000\000\193\000\193\000\193\000\193\000\000\000\193\000I\000\193\000\193\000I\000\193\000\134\000\000\000\178\000I\000I\000I\000I\000\162\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\194\000\202\000I\000\000\000I\000I\000\000\000I\000I\000\000\000\210\000\000\000\000\000I\000\000\000\154\000\218\000\000\000\000\001B\002b\000I\000I\000\000\000I\000-\000I\000I\000-\000\226\000\134\000\000\000\178\000-\000-\000-\000-\000\162\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\194\000\202\000-\000\000\000-\000-\000\000\000-\000-\000\000\000\210\000\000\000\000\000-\000\000\000\154\000\218\000\000\000\000\000\000\000\000\000-\000-\000\000\000-\001\017\000-\000-\001\017\000\226\000\134\000\000\000\178\001\017\001\017\001\017\001\017\000\162\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\194\000\202\001\017\000\000\001\017\001\017\000\000\001\017\001\017\001\r\000\210\000\000\001\r\001\017\000\000\000\154\000\218\001\r\001\r\001\r\001\r\001\017\001\017\000\000\001\017\000\000\001\017\001\017\000\000\000\226\000\000\000\000\000\178\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\r\000\000\001\r\001\r\000\149\001\r\001\r\000\149\000\000\000\000\000\000\001\r\000\149\000\149\000\149\000\149\000\000\000\000\000\000\001\r\001\r\000\000\001\r\000\000\001\r\001\r\001\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\149\000\149\000N\000\149\000\149\001\014\000\000\000\000\002:\000\149\001\230\0016\001R\001Z\000\000\000\000\000\000\000\149\000\149\000\000\000\149\000\000\000\149\000\149\000\000\000\000\000\000\000\134\000\000\001.\001\166\000\000\000\000\000\030\000\162\001j\001~\000\000\001\142\000\"\000\000\000\142\000\170\000\186\001\170\000\000\000\000\000\000\000\000\000\000\000\000\000\194\000\202\000\133\000\000\000&\000\000\000\133\000*\000\000\000\000\000\210\000\134\000\000\000\000\002\202\000\154\000\218\000\000\000\162\001%\000\000\001%\000\000\000\134\000\000\000\142\000\170\000\186\000\000\000\226\000\162\000\000\000\178\000\000\000\000\000\194\000\202\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\210\000\000\000\194\000\202\000\000\000\154\000\218\000\000\000\000\001!\000\000\001!\000\210\000\134\000\000\000\000\000\000\000\154\000\218\000\226\000\162\000\000\000\178\000\254\000\000\000\134\000\000\000\142\000\170\000\186\000\000\000\226\000\162\000\000\000\178\000\000\000\000\000\194\000\202\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\210\000\000\000\194\000\202\000\000\000\154\000\218\000\000\000\000\000\000\000\000\001\006\000\210\000\134\000\000\000\000\000\000\000\154\000\218\000\226\000\162\000\000\000\178\001\026\000\000\000\134\000\000\000\142\000\170\000\186\000\000\000\226\000\162\000\000\000\178\000\000\000\000\000\194\000\202\000\142\000\170\000\186\000\000\000\000\000\000\000\000\000\000\000\210\000\000\000\194\000\202\000\000\000\154\000\218\000\000\000\000\000\000\000\000\001v\000\210\000\000\000\000\000\000\000\000\000\154\000\218\000\226\000\000\000\000\000\178\001\218\000V\000\000\000\000\000\000\000Z\000\000\000\000\000\226\000\000\000\000\000\178\000^\000b\000f\000j\000n\000\000\000\000\000\000\000\000\000\000\000r\001&\000\000\000\000\000\000\000\000\000\000\000V\000\000\000\000\000\000\000Z\000\000\000\000\000\000\000\000\000\005\000\000\000^\000b\000f\000j\000n\000\000\000\000\000\000\000\000\000\000\000r"))
  
  and lhs =
    (8, "\000\030\030\029\028\028\027\027\026\026\025\024\023\022\021\020\019\018\017\016\015\014\r\r\r\r\r\r\r\r\r\r\r\012\012\012\011\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\b\b\007\007\006\006\005\005\004\003\003\002\002\001\001\001\001")
  
  and goto =
    ((16, "\000\002\000\000\000\000\000b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0004\000\000\000\000\000\000\000\003\000\000\000b\000\144\000\146\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\192\000\000\000\194\000\000\000\240\000\000\000\000\000\242\000\000\001 \000\000\001\"\000\000\001P\000\000\001R\000\000\001\128\000\000\001\130\000\000\001\176\000\000\001\178\000\000\001\224\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.\000\000\001\226\000\000\000\000\0002\002\016\002\018\000\000\000\000\000^\000\000\002>\000\000\000\000\000\000\000\000\000\000\002@\000\000\000\000\0000\000\000\000\000\000\000\002B\000\000\000\000\000\142\000\000\000\000\002D\000\000\000\000\000!\000\000\000\000\002f\000\000\002>\000\000\000\190\000\000\000\n\002h\000\000\000\000\000\000\000\000\000\000\002j\000\000\000\000\000\000\000\238\001\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001N\000\000\000\000\000\000\0000\000B\001~\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\174\000\000\000\000\000\000\000\132\000\000\001\222\000\000\000\000\000\000\000b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\002\014\000\000\002l\000\000\000\000\000\000\000\000\000\000\000\144\000\000"), (8, "m\012\031\014\012\003\014\004g;q\167y|}~\127\128\129\130\131\132\133\134m&\031\012\017\169<\173\169;\148\165y|}~\127\128\129\130\131\132\133\134m&\170\157\163\147Y\016\181\183A\149y|}~\127\128\129\130\131\132\133\134m\170&\164\163\161\000\184\183?>\141y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000!#ry|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000%(\135y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000*,{y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000.0\139y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\00024\145y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\00068\154y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000:F\160y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000\000\152K\176y|}~\127\128\129\130\131\132\133\134m&&\000\000\000\000\000PV]c\136|}~\127\128\129\130\131\132\133\134&&&&ipv\178\000\000\000\000\000\000\000\000\000\000\000\000&&&&"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sintatico_arvore.expressao list) = 
# 129 "sintatico.mly"
                 ( [] )
# 410 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.expressao list) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.expressao list) = 
# 130 "sintatico.mly"
           ( _1 )
# 435 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (
# 6 "sintatico.mly"
       (string)
# 461 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comando) = 
# 67 "sintatico.mly"
                   ( CmdDec(ExpVar _2, _1, None) )
# 470 "sintatico.ml"
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
        let _v : (Sintatico_arvore.comando list) = 
# 61 "sintatico.mly"
                       ( [] )
# 488 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando list) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando list) = 
# 62 "sintatico.mly"
         ( _1 )
# 513 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
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
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : (Sintatico_arvore.comandos) = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let _2 : (Sintatico_arvore.expressao) = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Sintatico_arvore.case) = 
# 119 "sintatico.mly"
                                                    ( CASE(_2, _4) )
# 568 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
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
        let _8 : unit = Obj.magic _8 in
        let _7 : unit = Obj.magic _7 in
        let _6 : (Sintatico_arvore.comandos) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.case) = 
# 120 "sintatico.mly"
                                                                              ( CASE(_3, _6) )
# 635 "sintatico.ml"
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
        let _v : (Sintatico_arvore.cases) = 
# 115 "sintatico.mly"
                  ( [] )
# 653 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Sintatico_arvore.cases) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.case) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.cases) = 
# 116 "sintatico.mly"
                  ( _1 :: _2 )
# 684 "sintatico.ml"
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
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao list) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : (
# 6 "sintatico.mly"
       (string)
# 723 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.expressao) = 
# 169 "sintatico.mly"
                                                       ( ChamaFunc(ExpVar _1, _3) )
# 731 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = id;
              MenhirLib.EngineTypes.startp = _startpos_id_;
              MenhirLib.EngineTypes.endp = _endpos_id_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let exp : (Sintatico_arvore.expressao) = Obj.magic exp in
        let _2 : unit = Obj.magic _2 in
        let id : (
# 6 "sintatico.mly"
       (string)
# 764 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sintatico_arvore.comando) = 
# 86 "sintatico.mly"
                                           ( CmdAtrib (ExpVar id, exp) )
# 772 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : (Sintatico_arvore.expressao option) = Obj.magic _3 in
        let _2 : (
# 6 "sintatico.mly"
       (string)
# 804 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comando) = 
# 88 "sintatico.mly"
                         ( CmdDec (ExpVar _2, _1, _3) )
# 813 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _8;
            MenhirLib.EngineTypes.startp = _startpos__8_;
            MenhirLib.EngineTypes.endp = _endpos__8_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _7;
              MenhirLib.EngineTypes.startp = _startpos__7_;
              MenhirLib.EngineTypes.endp = _endpos__7_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _6;
                MenhirLib.EngineTypes.startp = _startpos__6_;
                MenhirLib.EngineTypes.endp = _endpos__6_;
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
          };
        } = _menhir_stack in
        let _9 : unit = Obj.magic _9 in
        let _8 : unit = Obj.magic _8 in
        let _7 : (Sintatico_arvore.expressao) = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.comandos) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__9_ in
        let _v : (Sintatico_arvore.comando) = 
# 102 "sintatico.mly"
                                                                                                                            ( CmdDo(_3, _7) )
# 886 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _9;
              MenhirLib.EngineTypes.startp = _startpos__9_;
              MenhirLib.EngineTypes.endp = _endpos__9_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _8;
                MenhirLib.EngineTypes.startp = _startpos__8_;
                MenhirLib.EngineTypes.endp = _endpos__8_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _7;
                  MenhirLib.EngineTypes.startp = _startpos__7_;
                  MenhirLib.EngineTypes.endp = _endpos__7_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _6;
                    MenhirLib.EngineTypes.startp = _startpos__6_;
                    MenhirLib.EngineTypes.endp = _endpos__6_;
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
              };
            };
          };
        } = _menhir_stack in
        let _11 : unit = Obj.magic _11 in
        let _10 : (Sintatico_arvore.comandos) = Obj.magic _10 in
        let _9 : unit = Obj.magic _9 in
        let _8 : unit = Obj.magic _8 in
        let _7 : (Sintatico_arvore.comando) = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let _5 : (Sintatico_arvore.expressao) = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.comando) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Sintatico_arvore.comando) = 
# 100 "sintatico.mly"
                                                                                                                                                    ( CmdFor(_3, _5, _7, _10) )
# 971 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
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
        let _8 : (Sintatico_arvore.comandos option) = Obj.magic _8 in
        let _7 : unit = Obj.magic _7 in
        let _6 : (Sintatico_arvore.comandos) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.comando) = 
# 104 "sintatico.mly"
                                                                                                                  ( CmdIf(_3, _6, _8) )
# 1038 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let _1 : (
# 6 "sintatico.mly"
       (string)
# 1065 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comando) = 
# 106 "sintatico.mly"
                       ( CmdIncr(ExpVar _1) )
# 1073 "sintatico.ml"
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
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao list) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.comando) = 
# 94 "sintatico.mly"
                                                           ( CmdPrintf(_3) )
# 1116 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let exp : (Sintatico_arvore.expressao) = Obj.magic exp in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sintatico_arvore.comando) = 
# 127 "sintatico.mly"
                                 ( CmdReturn(exp) )
# 1147 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _6;
            MenhirLib.EngineTypes.startp = _startpos__6_;
            MenhirLib.EngineTypes.endp = _endpos__6_;
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
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let _6 : (
# 6 "sintatico.mly"
       (string)
# 1199 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sintatico_arvore.comando) = 
# 96 "sintatico.mly"
                                                                              ( CmdScanf(_3, ExpVar _6) )
# 1212 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
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
        let _8 : unit = Obj.magic _8 in
        let _7 : (Sintatico_arvore.default) = Obj.magic _7 in
        let _6 : (Sintatico_arvore.cases) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.comando) = 
# 113 "sintatico.mly"
                                                                                                                         ( CmdSwitch(_3, _6, Some(_7)) )
# 1279 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _6;
            MenhirLib.EngineTypes.startp = _startpos__6_;
            MenhirLib.EngineTypes.endp = _endpos__6_;
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
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let _6 : (Sintatico_arvore.comandos) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sintatico_arvore.comando) = 
# 98 "sintatico.mly"
                                                                                                                  ( CmdWhile(_3, _6) )
# 1340 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 73 "sintatico.mly"
                     ( _1 )
# 1365 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 74 "sintatico.mly"
                     ( _1 )
# 1390 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 75 "sintatico.mly"
                     ( _1 )
# 1415 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 76 "sintatico.mly"
                     ( _1 )
# 1440 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 77 "sintatico.mly"
                     ( _1 )
# 1465 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 78 "sintatico.mly"
                     ( _1 )
# 1490 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 79 "sintatico.mly"
                     ( _1 )
# 1515 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 80 "sintatico.mly"
                     ( _1 )
# 1540 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 81 "sintatico.mly"
                     ( _1 )
# 1565 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 82 "sintatico.mly"
                     ( _1 )
# 1590 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando) = 
# 83 "sintatico.mly"
                     ( _1 )
# 1615 "sintatico.ml"
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
        let _v : (Sintatico_arvore.comandos) = 
# 69 "sintatico.mly"
                                  ( [] )
# 1633 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : (Sintatico_arvore.comandos) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comandos) = 
# 70 "sintatico.mly"
                              ( _1 :: _3 )
# 1670 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Sintatico_arvore.comandos) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comandos) = 
# 71 "sintatico.mly"
                           ( _1 :: _2 )
# 1701 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : (Sintatico_arvore.comandos) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.default) = 
# 123 "sintatico.mly"
                                ( DEFAULT(_3) )
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sintatico_arvore.comandos option) = 
# 108 "sintatico.mly"
                  ( None )
# 1756 "sintatico.ml"
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
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.comandos) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.comandos option) = 
# 109 "sintatico.mly"
                                                                ( Some(_3) )
# 1799 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Sintatico_arvore.comando) = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comandos option) = 
# 110 "sintatico.mly"
                   ( Some([_2]) )
# 1830 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = id;
          MenhirLib.EngineTypes.startp = _startpos_id_;
          MenhirLib.EngineTypes.endp = _endpos_id_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let id : (
# 6 "sintatico.mly"
       (string)
# 1851 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (Sintatico_arvore.expressao) = 
# 138 "sintatico.mly"
                             ( ExpVar     id )
# 1859 "sintatico.ml"
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
       (int)
# 1880 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sintatico_arvore.expressao) = 
# 139 "sintatico.mly"
                             ( ExpInt      i )
# 1888 "sintatico.ml"
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
       (float)
# 1909 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sintatico_arvore.expressao) = 
# 140 "sintatico.mly"
                             ( ExpFloat    f )
# 1917 "sintatico.ml"
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
# 10 "sintatico.mly"
       (char)
# 1938 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sintatico_arvore.expressao) = 
# 141 "sintatico.mly"
                             ( ExpChar     c )
# 1946 "sintatico.ml"
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
# 7 "sintatico.mly"
       (string)
# 1967 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sintatico_arvore.expressao) = 
# 142 "sintatico.mly"
                             ( ExpString   s )
# 1975 "sintatico.ml"
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
# 11 "sintatico.mly"
       (bool)
# 1996 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sintatico_arvore.expressao) = 
# 143 "sintatico.mly"
                             ( ExpBool     b )
# 2004 "sintatico.ml"
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
        } = _menhir_stack in
        let e : (Sintatico_arvore.expressao) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_e_ in
        let _v : (Sintatico_arvore.expressao) = 
# 144 "sintatico.mly"
                             ( ExpUn(Not, e) )
# 2035 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 155 "sintatico.mly"
                 ( Or )
# 2074 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2080 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 156 "sintatico.mly"
                  ( And )
# 2119 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2125 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 157 "sintatico.mly"
                       ( Add )
# 2164 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2170 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 158 "sintatico.mly"
                          ( Sub )
# 2209 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2215 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 159 "sintatico.mly"
                             ( Mul )
# 2254 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2260 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 160 "sintatico.mly"
                       ( Div )
# 2299 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2305 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 161 "sintatico.mly"
                        ( More_Than )
# 2344 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2350 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 162 "sintatico.mly"
                        ( Less_Than )
# 2389 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2395 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 163 "sintatico.mly"
                              ( More_Equal_Than )
# 2434 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2440 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 164 "sintatico.mly"
                              ( Less_Equal_Than )
# 2479 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2485 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 165 "sintatico.mly"
                     ( Eq )
# 2524 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2530 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = re;
          MenhirLib.EngineTypes.startp = _startpos_re_;
          MenhirLib.EngineTypes.endp = _endpos_re_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = le;
              MenhirLib.EngineTypes.startp = _startpos_le_;
              MenhirLib.EngineTypes.endp = _endpos_le_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let re : (Sintatico_arvore.expressao) = Obj.magic re in
        let _10 : unit = Obj.magic _10 in
        let le : (Sintatico_arvore.expressao) = Obj.magic le in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_le_ in
        let _endpos = _endpos_re_ in
        let _v : (Sintatico_arvore.expressao) = let op =
          let _1 = _10 in
          
# 166 "sintatico.mly"
                        ( Dif )
# 2569 "sintatico.ml"
          
        in
        
# 145 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2575 "sintatico.ml"
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
        let _3 : unit = Obj.magic _3 in
        let e : (Sintatico_arvore.expressao) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.expressao) = 
# 146 "sintatico.mly"
                                                          ( e )
# 2612 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.expressao) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.expressao) = 
# 147 "sintatico.mly"
                      ( _1 )
# 2637 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
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
        let _8 : unit = Obj.magic _8 in
        let _7 : (Sintatico_arvore.comandos) = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : (Sintatico_arvore.comando list) = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.funcao) = 
# 52 "sintatico.mly"
                                                                                                                       ( Funcao(TINTEGER, ExpVar "main", [], _7, ExpInt 1) )
# 2704 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _9;
              MenhirLib.EngineTypes.startp = _startpos__9_;
              MenhirLib.EngineTypes.endp = _endpos__9_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _8;
                MenhirLib.EngineTypes.startp = _startpos__8_;
                MenhirLib.EngineTypes.endp = _endpos__8_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _7;
                  MenhirLib.EngineTypes.startp = _startpos__7_;
                  MenhirLib.EngineTypes.endp = _endpos__7_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _6;
                    MenhirLib.EngineTypes.startp = _startpos__6_;
                    MenhirLib.EngineTypes.endp = _endpos__6_;
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
              };
            };
          };
        } = _menhir_stack in
        let _11 : unit = Obj.magic _11 in
        let _10 : unit = Obj.magic _10 in
        let _9 : (Sintatico_arvore.expressao) = Obj.magic _9 in
        let _8 : unit = Obj.magic _8 in
        let _7 : (Sintatico_arvore.comandos) = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : (Sintatico_arvore.comando list) = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let _2 : (
# 6 "sintatico.mly"
       (string)
# 2784 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Sintatico_arvore.funcao) = 
# 53 "sintatico.mly"
                                                                                                                                          ( Funcao(_1, ExpVar _2, _4, _7, _9) )
# 2793 "sintatico.ml"
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
        let _v : (Sintatico_arvore.programa) = 
# 49 "sintatico.mly"
                    ( [] )
# 2811 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Sintatico_arvore.programa) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.funcao) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.programa) = 
# 50 "sintatico.mly"
                        ( _1 :: _2 )
# 2842 "sintatico.ml"
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
        let _v : (Sintatico_arvore.includee option) = 
# 46 "sintatico.mly"
                      ( None )
# 2860 "sintatico.ml"
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
# 27 "sintatico.mly"
       (string)
# 2881 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.includee option) = 
# 47 "sintatico.mly"
                      ( Some(Includes _1) )
# 2889 "sintatico.ml"
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
        let _v : (Sintatico_arvore.expressao option) = 
# 90 "sintatico.mly"
                         ( None )
# 2907 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Sintatico_arvore.expressao) = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.expressao option) = 
# 91 "sintatico.mly"
                               ( Some(_2) )
# 2938 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let _2 : (Sintatico_arvore.programa) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.includee option) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (
# 40 "sintatico.mly"
       (Sintatico_arvore.programa)
# 2975 "sintatico.ml"
        ) = 
# 44 "sintatico.mly"
                              ( _2 )
# 2979 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.comando) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.comando list) = 
# 64 "sintatico.mly"
               ( [_1] )
# 3004 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : (Sintatico_arvore.comando) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : (Sintatico_arvore.comando list) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comando list) = 
# 65 "sintatico.mly"
                        ( _1 @ [_3] )
# 3041 "sintatico.ml"
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
        let _1 : (Sintatico_arvore.expressao) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.expressao list) = 
# 133 "sintatico.mly"
                ( [_1] )
# 3066 "sintatico.ml"
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
        } = _menhir_stack in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : (Sintatico_arvore.expressao list) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.expressao list) = 
# 134 "sintatico.mly"
                          ( _1 @ [_3] )
# 3103 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.tipo) = 
# 55 "sintatico.mly"
              ( TINTEGER )
# 3128 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.tipo) = 
# 56 "sintatico.mly"
              ( TFLOAT )
# 3153 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.tipo) = 
# 57 "sintatico.mly"
              ( TCHAR  )
# 3178 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.tipo) = 
# 58 "sintatico.mly"
              ( TBOOL  )
# 3203 "sintatico.ml"
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
# 40 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3234 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 40 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3244 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
  


# 3253 "sintatico.ml"
