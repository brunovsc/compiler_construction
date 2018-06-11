
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20180530

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | SWITCH
    | SUBTRACTION
    | SINGLE_QUOTE
    | SEMICOLON
    | SCANF
    | RETURN
    | PRINTF
    | OR
    | OPEN_PARENTHESIS
    | OPEN_CURLED_BRACKETS
    | OPEN_BRACKETS
    | NOT
    | MULTIPLICATION
    | MORE_THAN
    | MORE_EQUAL_THAN
    | MODULE
    | MAIN
    | LITERAL_STRING of (
# 7 "sintatico.mly"
       (string)
# 34 "sintatico.ml"
  )
    | LITERAL_INTEGER of (
# 8 "sintatico.mly"
       (int)
# 39 "sintatico.ml"
  )
    | LITERAL_FLOAT of (
# 9 "sintatico.mly"
       (float)
# 44 "sintatico.ml"
  )
    | LITERAL_CHAR of (
# 10 "sintatico.mly"
       (char)
# 49 "sintatico.ml"
  )
    | LITERAL_BOOL of (
# 11 "sintatico.mly"
       (bool)
# 54 "sintatico.ml"
  )
    | LESS_THAN
    | LESS_EQUAL_THAN
    | INTEGER
    | INCREMENT
    | IF
    | ID of (
# 6 "sintatico.mly"
       (string)
# 64 "sintatico.ml"
  )
    | HEADER_FILE of (
# 55 "sintatico.mly"
       (string)
# 69 "sintatico.ml"
  )
    | FOR
    | FLOAT
    | EQUALS
    | EOF
    | ELSE
    | DO
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
    | ADDRESS
    | ADDITION
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "sintatico.mly"
  
	open Sintatico_arvore


# 107 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ADDITION ->
          53
      | ADDRESS ->
          52
      | AND ->
          51
      | ATTRIBUTION ->
          50
      | BOOL ->
          49
      | BREAK ->
          48
      | CASE ->
          47
      | CHAR ->
          46
      | CLOSE_BRACKETS ->
          45
      | CLOSE_CURLED_BRACKETS ->
          44
      | CLOSE_PARENTHESIS ->
          43
      | COLON ->
          42
      | COMA ->
          41
      | DECREMENT ->
          40
      | DEFAULT ->
          39
      | DIFFERENT ->
          38
      | DIVISION ->
          37
      | DO ->
          36
      | ELSE ->
          35
      | EOF ->
          34
      | EQUALS ->
          33
      | FLOAT ->
          32
      | FOR ->
          31
      | HEADER_FILE _ ->
          30
      | ID _ ->
          29
      | IF ->
          28
      | INCREMENT ->
          27
      | INTEGER ->
          26
      | LESS_EQUAL_THAN ->
          25
      | LESS_THAN ->
          24
      | LITERAL_BOOL _ ->
          23
      | LITERAL_CHAR _ ->
          22
      | LITERAL_FLOAT _ ->
          21
      | LITERAL_INTEGER _ ->
          20
      | LITERAL_STRING _ ->
          19
      | MAIN ->
          18
      | MODULE ->
          17
      | MORE_EQUAL_THAN ->
          16
      | MORE_THAN ->
          15
      | MULTIPLICATION ->
          14
      | NOT ->
          13
      | OPEN_BRACKETS ->
          12
      | OPEN_CURLED_BRACKETS ->
          11
      | OPEN_PARENTHESIS ->
          10
      | OR ->
          9
      | PRINTF ->
          8
      | RETURN ->
          7
      | SCANF ->
          6
      | SEMICOLON ->
          5
      | SINGLE_QUOTE ->
          4
      | SUBTRACTION ->
          3
      | SWITCH ->
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
      | DO ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQUALS ->
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
      | NOT ->
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
      | SUBTRACTION ->
          Obj.repr ()
      | SWITCH ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000G\001\000\000\000\000OPQR\000\004\000\000L\000\000\000\000\000\000\000/,-.0\000\000\000\000\000\000\000\000\0006A\000>\0007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\0111\000?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\000\020\000\000\000\000\019\000\000\000\000\000\000\000\018\000\014\000\000\012\000\000\000\000\000\000\000\000\000\000\000\000\000\000\r\000\000\000\000\000\000\015\000\000%\030 \027#\026!\031\028\029\"\025\024&\000\000\000\000\016\000\000\000\000\000)*\017\000\000\b\000\000\000\000\007\000\000\000'\000\022\000\n\000\023\000BK\000\000\000\000\000\000\000C\000J\000E")
  
  and error =
    (54, "\000\000\000\"\160\002@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b(\000\144\000\000 \004\000\000\000\000\128\000\000\000\000\000\000\000\002\b\001$\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001@\000\000\000\002\b\000$\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000@\000\000\000\000\0068\000\002\216\128\164\000\b\000\000\000\000\000\000$\031$\128\002@\000\144|\146\000\t\000\002A\242H\000$\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\028c\192\192Ft\020\000\144|\146\000I\000\000\000\000@\000\000\000\002\000\000\000\000\000\000$\031$\128\002@A\015\003\001\024\016P\002A\242H\000$\007\016\2400\017\157\005\000$\031$\128\002@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\007\201 \000\144\000\000\000\000\000\000\000\000\144|\146\000\t\000\000\000\000\000\000\000\000\t\007\201 \000\144\028C\192\192Ft\020\000\144|\146\000\t\001\196<\012\004gA@\t\007\201 \000\144\028C\192\192Ft\020\000\144|\146\000\t\001\196<\012\004gA@\t\007\201 \000\144\028C\192\192Ft\020\000\144|\146\000\t\001\196<\012\004gA@\t\007\201 \000\144\028C\192\192Ft\020\000\144|\146\000\t\001\196<\012\004gA@\t\007\201 \000\144\028C\192\192Ft\020\000\000\000\000\000\000\000\000\000\000\000\005\000\000\t\007\201 \000\144\016C\192\192FP\020A\015\003\001\025@P\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\015\003\001\024@P\000\000\000\000\000\000\004\016\2400\017\132\005\000\016\000\000\000\000\001\142\000\000\182 )\000\002\000\000\000\000\000\000\t\007\201 \000\144\016C\192\192F\016\020\000@\000\000\000\000\000\000\000\000\000\016\016\002\t\007\201 \000\144\000$\031$\128\002@a\015\003\001\024\000P\000\000\000\000\002\000\024\224\000\011b\000\176\000 \000\000\000\000\000\000\144|\146\000\t\001\004<\012\004d\001@\000\000\000\000\000\002\000\000\000\004\000\000\000\000\000\000\000\000@\000@\000\000\000\000\000\000\000\000\000\000\000\000\000$\031$\128\002@Q\015\003\001\024\000P\000\000\000\000\000\000\000\b\000\000\000\000\000\000$\031$\128\018@\000\000\000\000\000@\000@\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\144|\146\000\t\001\004<\012\004a\001@\004\000\000\000\000\000c\128\000-\136\n@\000\000\000@\002\000\128@\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\002A\242H\000$\005\016\2400\017\128\005\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\b\004\000\000\000\000\000\000\000\144|\146\000\t\001D<\012\004`\001X\224\000\011b\000\144\000\016\000\000\000\000\001\142\000\000\182 )\000\000\000\000@\000\000\001\000\000\000\000\000\b\000$\031$\128\002@Q\015\003\001\024\000P@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\t\007\201 \000\144\016C\192\192F\016\020\016\000\000\000\000\000\000\000\000\000\000\000\000\025\224\000\011b\002\176c\128\000-\136\n\192\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\016\000\000\000\000\001\142\000\000\182 )\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\b\001\158\000\000\182`k\000\001\000\000\128\000\000\024\224\000\011b\002\144\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\016\000\000\000\000\000\000\000\000\000\000\000\000\004\016\2400\017\136\005c\128\000-\136\002\192\000\000\000\000\000\002\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\128\0068\000\002\216\128\164\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\016\016\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\002\000\000\000\000\000\000\000\000\b \004\144\000\000\000\000\000\016\000\000@\000\000\000\000\0068\000\002\216\128\164\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\b(\000\144\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\003V\000\000\000\000\000#\000\021\000\011\000(\000\000\000\000\000\000\000\000\000\b\000\000\000/\000-\000\000\000\r\000H\004\000\000R\005\220\005\220\005\220\000\000\000\000\000\000\000\000\000\000\000\007\005\220\0000\000^\005\220\004\134\005\220\000P\005\220\000\000\000\000\005\220\000\000\005\220\000\000\005\220\000\166\005\220\000\252\005\220\001R\005\220\001\168\005\220\001\254\005\220\002T\005\220\002\170\005\220\003\000\005\220\003V\000\000\000%\005\220\004H\004\134\000\"\000\000\000\000\004\200\000\000\004\250\000d\004\000\000h\005\220\0058\000p\000\023\005\220\005\220\004H\0004\004\000\000x\005\220\004\250\000&\000V\000>\000\140\000\000\005\220\004H\000\000\000\138\005\220\000J\000\158\000\000\000\158\005\220\005j\000\158\004\000\0001\000\178\000\000\000\180\000\000\005\220\004\134\000\000\000\172\000\144\0001\000\194\005\220\004\250\004\000\000\184\004\000\000\150\0004\005\220\0058\000\200\000\000\000|\000\216\000\200\005\220\005\168\000\212\000\000\004\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\138\000\204\004\000\000\140\000\000\000\142\003\192\000<\004\000\000\146\000\000\000\000\000\000\000\140\000\228\000\000\004H\004\000\000\148\000\236\000\000\000\176\000\180\004\000\000\000\000\178\000\000\000\023\000\000\000\186\000\000\000\188\000\000\000\000\000\220\001\012\000(\000\204\001\014\004\000\000\206\000\000\000\228\000\000\000#\000\000"), (16, "\000\169\000\169\000\169\001\170\000\030\000\026\000\169\000v\000\022\000\018\000\"\000\169\000\169\000\169\000\169\000\"\001\178\001\r\000:\0019\000\021\000\169\000\169\000\254\000&\000\t\001\186\000*\000!\000&\000\169\001\029\000*\0002\000\169\000\169\001>\000F\000\169\000\169\000\169\002~\000\169\000\209\000\209\000\209\000\030\000J\000\169\000\209\000\169\000R\000\"\000~\000\146\000\209\000\209\000\158\001\146\000\130\001\014\001&\001.\000\017\000\209\000\209\000&\001:\001N\000*\001V\001b\001f\000\209\001j\001n\001\242\000\166\000\209\001\130\001\138\000\209\000\209\000\209\001\142\000\209\000\138\000\197\000\197\001\150\001\162\000\209\000\197\000\209\001\174\001\182\001\202\000\146\000\182\000\198\000\158\001\206\001\214\001\230\001\238\001\254\002\006\000\206\000\214\002\n\002\014\002\026\002b\002f\002n\002v\000\222\002\134\002\150\002\154\000\166\000\230\002\170\002\174\000\197\000\197\000\197\002\182\000\197\000\138\000\221\000\221\002\186\002\198\000\238\000\221\000\190\002\214\002\222\002\234\000\146\000\221\000\221\000\158\002\238\002\246\002\250\003\002\003\011\000\000\000\221\000\221\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\000\000\000\000\000\000\166\000\221\000\000\000\000\000\221\000\221\000\221\000\000\000\221\000\205\000\205\000\205\000\000\000\000\000\221\000\205\000\190\000\000\000\000\000\000\000\146\000\205\000\205\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\205\000\205\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\205\000\000\000\000\000\000\000\166\000\205\000\000\000\000\000\205\000\205\000\205\000\000\000\205\000\138\000\229\000\229\000\000\000\000\000\205\000\229\000\205\000\000\000\000\000\000\000\146\000\229\000\229\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\229\000\229\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\229\000\000\000\000\000\000\000\166\000\229\000\000\000\000\000\229\000\229\000\229\000\000\000\229\000\138\000\225\000\225\000\000\000\000\000\229\000\225\000\190\000\000\000\000\000\000\000\146\000\225\000\225\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\225\000\225\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\225\000\000\000\000\000\000\000\166\000\225\000\000\000\000\000\225\000\225\000\225\000\000\000\225\000\138\000\233\000\233\000\000\000\000\000\225\000\233\000\190\000\000\000\000\000\000\000\146\000\233\000\233\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\233\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\000\000\000\000\000\000\166\000\233\000\000\000\000\000\233\000\233\000\233\000\000\000\233\000\138\000\237\000\237\000\000\000\000\000\233\000\237\000\190\000\000\000\000\000\000\000\146\000\237\000\237\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\237\000\237\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\237\000\000\000\000\000\000\000\166\000\237\000\000\000\000\000\237\000\237\000\237\000\000\000\237\000\138\000\241\000\241\000\000\000\000\000\237\000\241\000\190\000\000\000\000\000\000\000\146\000\241\000\241\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\241\000\241\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\241\000\000\000\000\000\000\000\166\000\241\000\000\000\000\000\241\000\241\000\241\000\000\000\241\000\138\000\201\000\201\000\000\000\000\000\241\000\201\000\190\000\000\000\000\000\000\000\146\000\182\000\198\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\206\000\214\001\021\000\000\000\000\000\000\000\006\000\000\001\021\000\222\001\021\000\000\000\000\000\166\000\230\000\000\000\000\000\201\000\201\000\201\000\000\000\201\001\021\000\000\000\000\001\021\000\000\000\201\000\000\000\190\000\157\000\157\000\000\000\000\000\157\000\157\000\157\000\157\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\157\000\000\000\157\000\157\000\000\000\157\000\157\000N\001*\002z\000\157\002\"\001R\001r\001~\000\000\000\000\000\157\000\157\000\000\000\157\000\000\000\157\000\157\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\000\000\001\146\001\166\000\000\001\198\000\"\000\000\000\000\000\000\001\226\000\000\000\000\000\138\001J\001z\000\000\000\000\000\141\000\174\000&\000\000\000\141\000*\000\146\000\182\000\198\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\206\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\138\000\000\001\194\000\166\000\230\000\000\000\174\0015\002\162\0015\000\000\000\146\000\182\000\198\000\158\000\000\000\000\000\238\000\000\000\190\000\000\000\206\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\222\000\000\000\000\000\138\000\166\000\230\000\000\000\000\0011\000\174\0011\000\000\000\246\000\000\000\146\000\182\000\198\000\158\000\238\000\000\000\190\000\000\000\000\000\000\000\206\000\214\000\000\000\000\000\138\000\000\001\222\000\000\000\000\000\222\000\174\000\000\000\000\000\166\000\230\000\146\000\182\000\198\000\158\001\026\000\000\000\000\000\000\000\000\000\000\000\206\000\214\000\238\000\000\000\190\000\000\000\000\000\000\000\000\000\222\000\138\000\000\001!\000\166\000\230\000\000\000\174\001^\000\000\001\"\000\000\000\146\000\182\000\198\000\158\000\000\000\000\000\238\000\000\000\190\000\000\000\206\000\214\000\000\000\000\000\138\000\000\000\000\000\000\000\000\000\222\000\174\000\000\000\000\000\166\000\230\000\146\000\182\000\198\000\158\0016\000\000\000\000\000\000\000\000\000\000\000\206\000\214\000\238\000\000\000\190\000\000\000\000\000\000\000\000\000\222\000\138\000\000\000\000\000\166\000\230\000\000\000\174\000\000\000\000\001\158\000\000\000\146\000\182\000\198\000\158\000\000\000\000\000\238\000\000\000\190\000\000\000\206\000\214\000\000\000\000\000\000\000\000\001B\000\000\000\000\000\222\000\000\000\000\000V\000\166\000\230\000Z\000\000\000\000\000\000\002\022\000\000\000^\000b\000f\000j\000n\000\000\000\238\000\030\000\190\000\000\000r\000\000\000\000\000\"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000&\000\000\000\000\000*"))
  
  and lhs =
    (8, "\000\031\031\030\029\029\028\028\027\027\026\025\024\023\022\021\020\019\018\017\016\015\014\r\r\r\r\r\r\r\r\r\r\r\r\012\012\012\011\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\b\b\007\007\006\006\005\005\004\003\003\002\002\001\001\001\001")
  
  and goto =
    ((16, "\000\003\000\000\000\000\000\150\000\000\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\000\000\000\000\000\000\000\003\000\000\000\152\000\200\000\252\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001,\000\000\001`\000\000\001\144\000\000\000\000\001\196\000\000\001\244\000\000\002(\000\000\002X\000\000\002\\\000\000\002\136\000\000\002\140\000\000\002\144\000\000\002\146\000\000\002\148\000\000\002\150\000\000\000\000\000\000\002\154\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\002\158\000\000\000\000\000)\002\168\002\172\000\000\000\000\000b\000\000\002\176\000\000\000\000\000\000\000\000\000\000\000\000\002\212\000\000\000\000\000\000\0004\000\000\000\000\000\000\000\000\002\214\000\000\000\000\000\148\000\000\000\000\000\000\000\000\000\000\002\216\000\000\000\000\000\000\000\031\000\000\000\000\002\220\000\000\002V\000\000\000\198\000\000\0002\002\224\000\000\000\000\000\000\000\000\000\000\000\000\002\234\000\000\000\000\000\000\000\248\001*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\\\000\000\000\000\000\000\0000\000H\001\142\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\192\000\000\000\000\000\000\000`\000\000\001\242\000\000\000\000\000\000\0006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000d\000\000\000\000\002$\000\000\000\000\000\000\000\000\002\242\000\000"), (8, "{\031?\003\012\004\014\173\179Bu\183\136\139\140\141\142\143\144\145\146\147\148\149\150{'\031?\012\127C\017\185\164B\181\136\139\140\141\142\143\144\145\146\147\148\149\150{\012'\014\180\179\163b\016\177\000\165\136\139\140\141\142\143\144\145\146\147\148\149\150{\186\031\000\189\185\000\194\196\000H\157\136\139\140\141\142\143\144\145\146\147\148\149\150{\031'\000\000\000\000\000\000F\000\129\136\139\140\141\142\143\144\145\146\147\148\149\150{'\031\000\000\000\000\000\000\000E\151\136\139\140\141\142\143\144\145\146\147\148\149\150{\031'\000\000\000\000\000\000\"\000\138\136\139\140\141\142\143\144\145\146\147\148\149\150{'\031\000\000\000\000\000\000\000$\155\136\139\140\141\142\143\144\145\146\147\148\149\150{\031'\000\000\000\000\000\000&\000\161\136\139\140\141\142\143\144\145\146\147\148\149\150{'\031\000\000\000\000\000\000\000)\170\136\139\140\141\142\143\144\145\146\147\148\149\150{\031'\000\000\000\000\000\000+\000\176\136\139\140\141\142\143\144\145\146\147\148\149\150{'\031\000\000\000\000\000\000\000-\192\136\139\140\141\142\143\144\145\146\147\148\149\150{\031'\031\000\000\000\000\000/\0001\152\139\140\141\142\143\144\145\146\147\148\149\150\031'\031'\031\031\031\0313\0315\03179;=\031A\031M\031\000\000\000\168'R'W''''\000'\000'\000\031\031\031'\031'\031'^gp\031w\000~\186\000\000\000\133\000\197\196\000\000'''\000'\000'\000\000\000\000'"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sintatico_arvore.expressao list) = 
# 163 "sintatico.mly"
                 ( [] )
# 365 "sintatico.ml"
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
# 164 "sintatico.mly"
           ( _1 )
# 390 "sintatico.ml"
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
# 416 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comando) = 
# 96 "sintatico.mly"
                   ( CmdDec(ExpVar _2, _1, None) )
# 425 "sintatico.ml"
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
# 90 "sintatico.mly"
                       ( [] )
# 443 "sintatico.ml"
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
# 91 "sintatico.mly"
             ( _1 )
# 468 "sintatico.ml"
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
# 154 "sintatico.mly"
                                                    ( CASE(_2, _4) )
# 523 "sintatico.ml"
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
# 155 "sintatico.mly"
                                                                              ( CASE(_3, _6) )
# 590 "sintatico.ml"
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
# 150 "sintatico.mly"
                  ( [] )
# 608 "sintatico.ml"
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
# 151 "sintatico.mly"
                  ( _1 :: _2 )
# 639 "sintatico.ml"
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
# 678 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.expressao) = 
# 203 "sintatico.mly"
                                                       ( ChamaFunc(ExpVar _1, _3) )
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
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let exp : (Sintatico_arvore.expressao) = Obj.magic exp in
        let _2 : unit = Obj.magic _2 in
        let id : (
# 6 "sintatico.mly"
       (string)
# 725 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.comando) = 
# 117 "sintatico.mly"
                                                     ( CmdAtrib (ExpVar id, exp) )
# 733 "sintatico.ml"
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
        let _3 : (Sintatico_arvore.expressao option) = Obj.magic _3 in
        let _2 : (
# 6 "sintatico.mly"
       (string)
# 771 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sintatico_arvore.comando) = 
# 119 "sintatico.mly"
                                   ( CmdDec(ExpVar _2, _1, _3) )
# 780 "sintatico.ml"
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
        let _2 : unit = Obj.magic _2 in
        let _1 : (
# 6 "sintatico.mly"
       (string)
# 813 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comando) = 
# 141 "sintatico.mly"
                                 ( CmdDecr(ExpVar _1) )
# 821 "sintatico.ml"
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
# 135 "sintatico.mly"
                                                                                                                            ( CmdDo(_3, _7) )
# 894 "sintatico.ml"
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
# 133 "sintatico.mly"
                                                                                                                                                    ( CmdFor(_3, _5, _7, _10) )
# 979 "sintatico.ml"
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
# 137 "sintatico.mly"
                                                                                                                  ( CmdIf(_3, _6, _8) )
# 1046 "sintatico.ml"
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
        let _2 : unit = Obj.magic _2 in
        let _1 : (
# 6 "sintatico.mly"
       (string)
# 1079 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comando) = 
# 139 "sintatico.mly"
                                 ( CmdIncr(ExpVar _1) )
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
        } = _menhir_stack in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao list) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sintatico_arvore.comando) = 
# 127 "sintatico.mly"
                                                                     ( CmdPrintf(_3) )
# 1136 "sintatico.ml"
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
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let exp : (Sintatico_arvore.expressao) = Obj.magic exp in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sintatico_arvore.comando) = 
# 161 "sintatico.mly"
                                           ( CmdReturn(exp) )
# 1173 "sintatico.ml"
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
        let _6 : (
# 6 "sintatico.mly"
       (string)
# 1231 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (Sintatico_arvore.expressao) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.comando) = 
# 129 "sintatico.mly"
                                                                                        ( CmdScanf(_3, ExpVar _6) )
# 1244 "sintatico.ml"
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
# 148 "sintatico.mly"
                                                                                                                         ( CmdSwitch(_3, _6, Some(_7)) )
# 1311 "sintatico.ml"
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
# 131 "sintatico.mly"
                                                                                                                  ( CmdWhile(_3, _6) )
# 1372 "sintatico.ml"
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
# 103 "sintatico.mly"
                     ( _1 )
# 1397 "sintatico.ml"
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
# 104 "sintatico.mly"
                     ( _1 )
# 1422 "sintatico.ml"
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
# 105 "sintatico.mly"
                     ( _1 )
# 1447 "sintatico.ml"
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
# 106 "sintatico.mly"
                     ( _1 )
# 1472 "sintatico.ml"
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
# 107 "sintatico.mly"
                     ( _1 )
# 1497 "sintatico.ml"
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
# 108 "sintatico.mly"
                     ( _1 )
# 1522 "sintatico.ml"
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
# 109 "sintatico.mly"
                     ( _1 )
# 1547 "sintatico.ml"
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
# 110 "sintatico.mly"
                     ( _1 )
# 1572 "sintatico.ml"
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
# 111 "sintatico.mly"
                     ( _1 )
# 1597 "sintatico.ml"
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
# 112 "sintatico.mly"
                     ( _1 )
# 1622 "sintatico.ml"
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
# 113 "sintatico.mly"
                     ( _1 )
# 1647 "sintatico.ml"
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
# 114 "sintatico.mly"
                     ( _1 )
# 1672 "sintatico.ml"
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
# 98 "sintatico.mly"
                                 ( [] )
# 1690 "sintatico.ml"
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
# 99 "sintatico.mly"
                              ( _1 :: _3 )
# 1727 "sintatico.ml"
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
# 100 "sintatico.mly"
                              ( _1 :: _2 )
# 1758 "sintatico.ml"
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
# 158 "sintatico.mly"
                                ( DEFAULT(_3) )
# 1795 "sintatico.ml"
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
# 143 "sintatico.mly"
                  ( None )
# 1813 "sintatico.ml"
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
# 144 "sintatico.mly"
                                                                ( Some(_3) )
# 1856 "sintatico.ml"
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
# 145 "sintatico.mly"
                   ( Some([_2]) )
# 1887 "sintatico.ml"
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
# 1908 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (Sintatico_arvore.expressao) = 
# 172 "sintatico.mly"
                             ( ExpVar     id )
# 1916 "sintatico.ml"
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
# 1937 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sintatico_arvore.expressao) = 
# 173 "sintatico.mly"
                             ( ExpInt      i )
# 1945 "sintatico.ml"
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
# 1966 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sintatico_arvore.expressao) = 
# 174 "sintatico.mly"
                             ( ExpFloat    f )
# 1974 "sintatico.ml"
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
# 1995 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sintatico_arvore.expressao) = 
# 175 "sintatico.mly"
                             ( ExpChar     c )
# 2003 "sintatico.ml"
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
# 2024 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sintatico_arvore.expressao) = 
# 176 "sintatico.mly"
                             ( ExpString   s )
# 2032 "sintatico.ml"
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
# 2053 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sintatico_arvore.expressao) = 
# 177 "sintatico.mly"
                             ( ExpBool     b )
# 2061 "sintatico.ml"
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
# 178 "sintatico.mly"
                             ( ExpUn(Not, e) )
# 2092 "sintatico.ml"
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
          
# 188 "sintatico.mly"
                 ( Or )
# 2131 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2137 "sintatico.ml"
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
          
# 189 "sintatico.mly"
                  ( And )
# 2176 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2182 "sintatico.ml"
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
          
# 190 "sintatico.mly"
                       ( Add )
# 2221 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2227 "sintatico.ml"
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
          
# 191 "sintatico.mly"
                          ( Sub )
# 2266 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2272 "sintatico.ml"
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
          
# 192 "sintatico.mly"
                             ( Mul )
# 2311 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2317 "sintatico.ml"
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
          
# 193 "sintatico.mly"
                       ( Div )
# 2356 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2362 "sintatico.ml"
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
          
# 194 "sintatico.mly"
                        ( More_Than )
# 2401 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2407 "sintatico.ml"
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
          
# 195 "sintatico.mly"
                        ( Less_Than )
# 2446 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2452 "sintatico.ml"
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
          
# 196 "sintatico.mly"
                              ( More_Equal_Than )
# 2491 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2497 "sintatico.ml"
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
          
# 197 "sintatico.mly"
                              ( Less_Equal_Than )
# 2536 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2542 "sintatico.ml"
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
          
# 198 "sintatico.mly"
                     ( Eq )
# 2581 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2587 "sintatico.ml"
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
          
# 199 "sintatico.mly"
                        ( Dif )
# 2626 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2632 "sintatico.ml"
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
          
# 200 "sintatico.mly"
                     ( Mod )
# 2671 "sintatico.ml"
          
        in
        
# 179 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2677 "sintatico.ml"
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
# 180 "sintatico.mly"
                                                          ( e )
# 2714 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
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
        let _5 : unit = Obj.magic _5 in
        let _4 : (Sintatico_arvore.expressao) = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let id : (
# 6 "sintatico.mly"
       (string)
# 2758 "sintatico.ml"
        ) = Obj.magic id in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sintatico_arvore.expressao) = 
# 182 "sintatico.mly"
                                                             ( ExpVar id )
# 2767 "sintatico.ml"
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
# 183 "sintatico.mly"
                      ( _1 )
# 2792 "sintatico.ml"
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
# 80 "sintatico.mly"
                                                                                                                       ( Funcao(TINTEGER, ExpVar "main", [], _7, ExpInt 1) )
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
        let _2 : (
# 6 "sintatico.mly"
       (string)
# 2921 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.funcao) = 
# 81 "sintatico.mly"
                                                                                                               ( Funcao(_1, ExpVar _2, _4, _7, ExpInt 1) )
# 2930 "sintatico.ml"
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
# 76 "sintatico.mly"
                    ( [] )
# 2948 "sintatico.ml"
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
# 77 "sintatico.mly"
                        ( _1 :: _2 )
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sintatico_arvore.includee option) = 
# 73 "sintatico.mly"
                      ( None )
# 2997 "sintatico.ml"
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
# 55 "sintatico.mly"
       (string)
# 3018 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.includee option) = 
# 74 "sintatico.mly"
                      ( Some(Includes _1) )
# 3026 "sintatico.ml"
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
# 123 "sintatico.mly"
         ( None )
# 3044 "sintatico.ml"
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
# 124 "sintatico.mly"
                               ( Some(_2) )
# 3075 "sintatico.ml"
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
# 67 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3112 "sintatico.ml"
        ) = 
# 71 "sintatico.mly"
                              ( _2 )
# 3116 "sintatico.ml"
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
# 93 "sintatico.mly"
               ( [_1] )
# 3141 "sintatico.ml"
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
# 94 "sintatico.mly"
                        ( _1 @ [_3] )
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
        let _1 : (Sintatico_arvore.expressao) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.expressao list) = 
# 167 "sintatico.mly"
                ( [_1] )
# 3203 "sintatico.ml"
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
# 168 "sintatico.mly"
                          ( _1 @ [_3] )
# 3240 "sintatico.ml"
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
# 84 "sintatico.mly"
              ( TINTEGER )
# 3265 "sintatico.ml"
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
# 85 "sintatico.mly"
              ( TFLOAT )
# 3290 "sintatico.ml"
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
# 86 "sintatico.mly"
              ( TCHAR  )
# 3315 "sintatico.ml"
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
# 87 "sintatico.mly"
              ( TBOOL  )
# 3340 "sintatico.ml"
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
# 67 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3371 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 67 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3381 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
  


# 3390 "sintatico.ml"
