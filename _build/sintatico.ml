
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
    (8, "\000G\001\000\000\000\000OPQR\000\004\000\000L\000\000\000\000\000\000\0000-./1\000\000\000\000\000\000\000\0007A\000?\0008\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0112\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\022\000\000\021\000\000\000\000\020\000\000\000\000\000\000\019\015\000\000\012\000\000\000\000\000\000\000\000\000\000\000\000\000\014\000\000\000\r\000\000\000\000\000\000\016\000\000&\031!\028$\027\" \029\030#\026\025'\000\000\000\000\017\000\000\000\000\000*+\018\000\000\b\000\000\000\000\007\000\000\000(\000\023\000\n\000\024\000BK\000\000\000\000\000\000\000C\000J\000E")
  
  and error =
    (54, "\000\000\000\"\160\002@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b(\000\144\000\000 \004\000\000\000\000\128\000\000\000\000\000\000\000\002\b\001$\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001@\000\000\000\002\b\000$\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000@\000\000\000\000\0068\000\002\216\128\164\000\b\000\000\000\000\000\000$\031\004\000\000\000\000\144|\016\000\000\000\002A\240@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\028c\192\192Fp\020\000\144|\016\000@\000\000\000\000\000\005\000\000\t\007\193\000\000\000\016C\192\192FP\020\000\144|\016\000\000\001\196<\012\004g\001@\t\007\193\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002A\240@\000\000\000\000\000\000\000\000\000\000$\031\004\000\000\000\000\000\000\000\000\000\000\002A\240@\000\000\007\016\2400\017\156\005\000$\031\004\000\000\000q\015\003\001\025\192P\002A\240@\000\000\007\016\2400\017\156\005\000$\031\004\000\000\000q\015\003\001\025\192P\002A\240@\000\000\007\016\2400\017\156\005\000$\031\004\000\000\000q\015\003\001\025\192P\002A\240@\000\000\007\016\2400\017\156\005\000$\031\004\000\000\000q\015\003\001\025\192P\002A\240@\000\000\007\016\2400\017\156\005\016C\192\192FP\020\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016C\192\192F\016\020\000\000\000\000\000\000\001\004<\012\004a\001@\004\000\000\000\000\000c\128\000-\136\n@\000\128\000\000\000\000\000\002A\240@\000\000\004\016\2400\017\132\005\000\016\000\000\000\000\000\000\000\000\000\004\004\000\130A\240@\000\000\000\t\007\193\000\000\000\024C\192\192F\000\020\000\000\000\000\000\128\0068\000\002\216\128,\000\b\000\000\000\000\000\000$\031\004\000\000\000A\015\003\001\025\000P\000\000\000\000\000\000\128\000\000\001\000\000\000\000\000\000\000\000\016\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\t\007\193\000\000\000\020C\192\192F\000\020\000\000\000\000\000\000\000\002\000\000\000\000\000\000\t\007\193\000\004\000\000\000\000\000\000\016\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000$\031\004\000\000\000A\015\003\001\024@P\001\000\000\000\000\000\024\224\000\011b\002\144\000\000\000\016\000\128 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\007\193\000\000\000\020C\192\192F\000\020\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000 \000\144|\016\000\000\001D<\012\004`\001X\224\000\011b\000\144\000\016\000\000\000\000\001\142\000\000\182 )\000\000\000\000@\000\000\001\002\000\000\000\000\b\000\000\b\000\000\000\000\000\000\000\000\000\016\000@\000\000\000\000\000\000\000\000\000\000\000\000\000$\031\004\000\000\000Q\015\003\001\024\000P@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\t\007\193\000\000\000\016C\192\192F\016\020\016\000\000\000\000\000\000\000\000\000\000\000\000\025\224\000\011b\002\176c\128\000-\136\n\192\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\016\000\000\000\000\001\142\000\000\182 )\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\b\001\158\000\000\182`k\000\001\000\000\128\000\000\024\224\000\011b\002\144\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\016\000\000\000\000\000\000\000\000\000\000\000\000\004\016\2400\017\136\005c\128\000-\136\002\192\000\000\000\000\000\002\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\128\0068\000\002\216\128\164\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\016\016\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\002\000\000\000\000\000\000\000\000\b \004\144\000\000\000\000\000\016\000\000@\000\000\000\000\0068\000\002\216\128\164\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\b(\000\144\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\002f\000\000\000\000\002\250\000\027\000\n\000/\000\000\000\000\000\000\000\000\000\023\000\000\000C\000/\000\000\0001\000\028\003\016\000&\002\210\002\210\002\210\000\000\000\000\000\000\000\000\000\000\000\007\004\232\000\012\002\210\003X\002\210\0008\002\210\000\000\000\000\002\210\000\000\002\210\000\000\002\210\000v\002\210\000\180\002\210\000\242\002\210\0010\002\210\001n\002\210\001\172\002\210\001\234\002\210\002(\002\210\002f\003\150\000\006\000\000\000\000\003\212\000\000\004\006\000P\003\016\000X\002\210\004D\000X\000\023\004\232\002\210\003X\000\028\003\016\000^\002\210\004\006\000\012\000<\000\"\000|\000\000\002\210\003X\000\000\000|\004\232\000D\000\146\000\000\000\140\002\210\004v\000\142\003\016\000/\000\000\000\000\002\210\003\150\000\000\000\150\000r\000/\002\210\003\212\003\016\000\152\003\016\000v\002H\000\138\000Z\000\172\000\000\002\210\004\006\000\186\000\000\000v\000\214\000\198\002\210\004\180\000\212\000\000\003\016\003\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\140\000\210\003\016\000\146\000\000\000\148\002\208\000\026\003\016\000\150\000\000\000\000\000\000\000\144\000\232\000\000\003X\003\016\000\148\000\248\000\000\000\190\000\194\003\016\000\000\000\192\000\000\000\023\000\000\000\196\000\000\000\200\000\000\000\000\000\236\001\020\000/\000\212\001\022\003\016\000\214\000\000\000\236\000\000\002\250\000\000"), (16, "\000\173\000\173\000\173\000\030\001\150\000\022\000\173\000v\000:\000\"\000\021\000\173\000\173\000\173\000\173\000\026\0019\001\154\0002\000F\000\017\000\173\000\173\000&\002n\000J\000*\001\158\000!\000R\000\173\000\213\000\213\000\213\000\173\000\173\001*\000\213\000\173\000\173\000\173\001~\000\142\000\213\000\213\000\154\000\250\000~\000\173\000\t\000\173\001\018\000\213\000\213\001\026\001&\001:\001B\001N\001R\001V\000\213\000\134\000\201\000\201\000\162\000\213\001Z\000\201\000\213\000\213\000\213\001n\000\142\000\178\000\194\000\154\001v\001z\000\213\001\130\000\213\001\142\000\202\000\210\001\174\001\178\001\198\001\206\001\214\001\218\001\222\000\218\000\134\000\225\000\225\000\162\000\226\001\238\000\225\000\201\000\201\000\201\001\246\000\142\000\225\000\225\000\154\001\250\001\254\000\234\002\n\000\186\002R\000\225\000\225\002V\002^\002f\002v\002\134\002\138\002\154\000\225\000\209\000\209\000\209\000\162\000\225\002\158\000\209\000\225\000\225\000\225\002\166\000\142\000\209\000\209\000\154\002\170\002\182\000\225\002\198\000\186\002\206\000\209\000\209\002\218\002\222\002\230\002\234\002\242\002\251\000\000\000\209\000\134\000\233\000\233\000\162\000\209\000\000\000\233\000\209\000\209\000\209\000\000\000\142\000\233\000\233\000\154\000\000\000\000\000\209\000\000\000\209\000\000\000\233\000\233\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\134\000\229\000\229\000\162\000\233\000\000\000\229\000\233\000\233\000\233\000\000\000\142\000\229\000\229\000\154\000\000\000\000\000\233\000\000\000\186\000\000\000\229\000\229\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\229\000\134\000\237\000\237\000\162\000\229\000\000\000\237\000\229\000\229\000\229\000\000\000\142\000\237\000\237\000\154\000\000\000\000\000\229\000\000\000\186\000\000\000\237\000\237\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\237\000\134\000\241\000\241\000\162\000\237\000\000\000\241\000\237\000\237\000\237\000\000\000\142\000\241\000\241\000\154\000\000\000\000\000\237\000\000\000\186\000\000\000\241\000\241\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\241\000\134\000\245\000\245\000\162\000\241\000\000\000\245\000\241\000\241\000\241\000\000\000\142\000\245\000\245\000\154\000\000\000\000\000\241\001\029\000\186\000\000\000\245\000\245\000\000\000\000\001\210\000\000\000\000\000\000\000\000\000\245\000\134\000\205\000\205\000\162\000\245\000\000\000\205\000\245\000\245\000\245\000\000\000\142\000\178\000\194\000\154\000\000\000\000\000\245\000\000\000\186\000\000\000\202\000\210\001\021\000\000\000\000\000\000\000\006\000\000\001\021\000\218\001\021\001\226\000\000\000\162\000\226\000\000\000\000\000\205\000\205\000\205\000\000\000\000\001\021\000\000\000\000\001\021\000\000\000\205\000\000\000\186\000\161\000\161\000\000\000\000\000\161\000\161\000\161\000\161\000\000\000\000\000V\000\000\000\000\000Z\000\000\000\000\000\000\000\000\000\000\000^\000b\000f\000j\000n\000\000\000\161\000\000\000\161\000\161\000r\000\161\000\161\000N\001\022\002j\000\161\002\018\001>\001^\001j\000\000\000\000\000\161\000\161\000\000\000\161\000\018\000\161\000\161\000\000\000\000\000\000\000\"\000\000\001\r\000\000\000\000\000\030\000\000\001~\001\146\000\000\001\170\000\"\000\000\000\000\000&\001\194\000\000\000*\000\134\0016\001f\000\000\000\000\000\145\000\170\000&\000\000\000\145\000*\000\142\000\178\000\194\000\154\000\000\000\000\000\000\000\000\000\000\000\000\000\202\000\210\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\218\000\134\000\000\001\166\000\162\000\226\000\000\000\170\0015\002\146\0015\000\000\000\142\000\178\000\194\000\154\000\000\000\000\000\234\000\000\000\186\000\000\000\202\000\210\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\218\000\134\000\000\001\190\000\162\000\226\000\000\000\170\0011\000\000\0011\000\000\000\142\000\178\000\194\000\154\000\000\000\000\000\234\000\000\000\186\000\000\000\202\000\210\000\000\000\000\000\134\000\000\001!\000\000\000\000\000\218\000\170\000\000\000\000\000\162\000\226\000\142\000\178\000\194\000\154\001\006\000\000\000\000\000\000\000\000\000\000\000\202\000\210\000\234\000\000\000\186\000\000\000\000\000\000\000\000\000\218\000\134\000\000\000\000\000\162\000\226\000\000\000\170\001J\000\000\001\014\000\000\000\142\000\178\000\194\000\154\000\000\000\000\000\234\000\000\000\186\000\000\000\202\000\210\000\000\000\000\000\134\000\000\000\000\000\000\000\000\000\218\000\170\000\000\000\000\000\162\000\226\000\142\000\178\000\194\000\154\001\"\000\000\000\000\000\000\000\000\000\000\000\202\000\210\000\234\000\000\000\186\000\000\000\000\000\000\000\000\000\218\000\134\000\000\000\000\000\162\000\226\000\000\000\170\000\000\000\000\001\138\000\000\000\142\000\178\000\194\000\154\000\000\000\000\000\234\000\000\000\186\000\000\000\202\000\210\000\000\000\000\000\000\000\000\001.\000\000\000\000\000\218\000\000\000\000\000V\000\162\000\226\000Z\000\000\000\000\000\000\002\006\000\000\000^\000b\000f\000j\000n\000\000\000\234\000\000\000\186\000\000\000r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005"))
  
  and lhs =
    (8, "\000\031\031\030\029\029\028\028\027\027\026\025\024\024\023\022\021\020\019\018\017\016\015\014\r\r\r\r\r\r\r\r\r\r\r\r\012\012\012\011\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\b\b\007\007\006\006\005\005\004\003\003\002\002\001\001\001\001")
  
  and goto =
    ((16, "\000\002\000\000\000\000\000f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0006\000\000\000\000\000\000\000\003\000\000\000f\000\150\000\152\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\000\000\000\202\000\000\000\250\000\000\000\000\000\252\000\000\001,\000\000\001.\000\000\001^\000\000\001`\000\000\001\144\000\000\001\146\000\000\001\194\000\000\001\196\000\000\001\244\000\000\001\246\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\002&\000\000\000\000\0004\002(\002V\000\000\000\000\000b\000\000\002X\000\000\000\000\000\000\000\000\000\000\000\000\002Z\000\000\000\000\000\000\0002\000\000\000\000\000\000\000\000\002\\\000\000\000\000\000\148\000\000\000\000\000\000\002\128\000\000\000\000\000\000\000#\000\000\002\130\000\000\002V\000\000\000\198\000\000\000\n\000\000\000\000\000\000\000\000\002\132\000\000\000\000\000\000\000\000\000\000\000\000\002\134\000\000\000\000\000\000\000\248\001*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\\\000\000\000\000\000\000\0002\000F\001\142\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\192\000\000\000\000\000\000\000\138\000\000\001\242\000\000\000\000\000\000\000f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\002$\000\000\000\000\000\000\000\000\000\150\000\000"), (8, "s\012\031\014\012\003\014\004n={\179\132\135\136\137\138\139\140\141\142\143\144\145\146s&\031\012\017\181>\185\181=\160\177\132\135\136\137\138\139\140\141\142\143\144\145\146s&\182\169\175\159]\016\190\192C\161\132\135\136\137\138\139\140\141\142\143\144\145\146s\182&\176\175\173\000\193\192A@\153\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000!#}\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000%(\147\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000*,\134\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000.0\151\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\00024\157\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\00068\166\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000:<\172\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000\000H\164\188\132\135\136\137\138\139\140\141\142\143\144\145\146s&&\000\000\000\000\000MRYb\148\135\136\137\138\139\140\141\142\143\144\145\146&&&&ioz\129\000\000\000\000\000\000\000\000\000\000\000\000\000&&&&"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sintatico_arvore.expressao list) = 
# 165 "sintatico.mly"
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
# 166 "sintatico.mly"
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
# 156 "sintatico.mly"
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
# 157 "sintatico.mly"
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
# 152 "sintatico.mly"
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
# 153 "sintatico.mly"
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
# 120 "sintatico.mly"
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
                  MenhirLib.EngineTypes.semv = id;
                  MenhirLib.EngineTypes.startp = _startpos_id_;
                  MenhirLib.EngineTypes.endp = _endpos_id_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = t;
                    MenhirLib.EngineTypes.startp = _startpos_t_;
                    MenhirLib.EngineTypes.endp = _endpos_t_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : (
# 8 "sintatico.mly"
       (int)
# 828 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let id : (
# 6 "sintatico.mly"
       (string)
# 834 "sintatico.ml"
        ) = Obj.magic id in
        let t : (Sintatico_arvore.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos__6_ in
        let _v : (Sintatico_arvore.comando) = 
# 121 "sintatico.mly"
                                                                             ( CmdDec(ExpVar id, t, None) )
# 843 "sintatico.ml"
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
# 870 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comando) = 
# 143 "sintatico.mly"
                       ( CmdDecr(ExpVar _1) )
# 878 "sintatico.ml"
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
# 137 "sintatico.mly"
                                                                                                                            ( CmdDo(_3, _7) )
# 951 "sintatico.ml"
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
        } = _menhir_stack in
        let _10 : unit = Obj.magic _10 in
        let _9 : (Sintatico_arvore.comandos) = Obj.magic _9 in
        let _8 : unit = Obj.magic _8 in
        let _7 : unit = Obj.magic _7 in
        let _6 : (Sintatico_arvore.comando) = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let _4 : (Sintatico_arvore.expressao) = Obj.magic _4 in
        let _3 : (Sintatico_arvore.comando) = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__10_ in
        let _v : (Sintatico_arvore.comando) = 
# 135 "sintatico.mly"
                                                                                                                                          ( CmdFor(_3, _4, _6, _9) )
# 1030 "sintatico.ml"
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
# 139 "sintatico.mly"
                                                                                                                  ( CmdIf(_3, _6, _8) )
# 1097 "sintatico.ml"
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
# 1124 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sintatico_arvore.comando) = 
# 141 "sintatico.mly"
                       ( CmdIncr(ExpVar _1) )
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
# 129 "sintatico.mly"
                                                                     ( CmdPrintf(_3) )
# 1181 "sintatico.ml"
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
# 163 "sintatico.mly"
                                           ( CmdReturn(exp) )
# 1218 "sintatico.ml"
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
# 1276 "sintatico.ml"
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
# 131 "sintatico.mly"
                                                                                        ( CmdScanf(_3, ExpVar _6) )
# 1289 "sintatico.ml"
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
# 150 "sintatico.mly"
                                                                                                                         ( CmdSwitch(_3, _6, Some(_7)) )
# 1356 "sintatico.ml"
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
# 133 "sintatico.mly"
                                                                                                                  ( CmdWhile(_3, _6) )
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
# 1442 "sintatico.ml"
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
# 1467 "sintatico.ml"
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
# 1492 "sintatico.ml"
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
# 1517 "sintatico.ml"
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
# 1542 "sintatico.ml"
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
# 1567 "sintatico.ml"
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
# 1592 "sintatico.ml"
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
# 1617 "sintatico.ml"
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
# 1642 "sintatico.ml"
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
# 1667 "sintatico.ml"
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
# 1692 "sintatico.ml"
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
# 1717 "sintatico.ml"
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
# 1735 "sintatico.ml"
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
# 1772 "sintatico.ml"
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
# 1803 "sintatico.ml"
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
# 160 "sintatico.mly"
                                ( DEFAULT(_3) )
# 1840 "sintatico.ml"
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
# 145 "sintatico.mly"
                  ( None )
# 1858 "sintatico.ml"
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
# 146 "sintatico.mly"
                                                                ( Some(_3) )
# 1901 "sintatico.ml"
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
# 147 "sintatico.mly"
                   ( Some([_2]) )
# 1932 "sintatico.ml"
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
# 1953 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (Sintatico_arvore.expressao) = 
# 174 "sintatico.mly"
                             ( ExpVar     id )
# 1961 "sintatico.ml"
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
# 1982 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sintatico_arvore.expressao) = 
# 175 "sintatico.mly"
                             ( ExpInt      i )
# 1990 "sintatico.ml"
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
# 2011 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sintatico_arvore.expressao) = 
# 176 "sintatico.mly"
                             ( ExpFloat    f )
# 2019 "sintatico.ml"
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
# 2040 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sintatico_arvore.expressao) = 
# 177 "sintatico.mly"
                             ( ExpChar     c )
# 2048 "sintatico.ml"
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
# 2069 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sintatico_arvore.expressao) = 
# 178 "sintatico.mly"
                             ( ExpString   s )
# 2077 "sintatico.ml"
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
# 2098 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sintatico_arvore.expressao) = 
# 179 "sintatico.mly"
                             ( ExpBool     b )
# 2106 "sintatico.ml"
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
# 180 "sintatico.mly"
                             ( ExpUn(Not, e) )
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
          
# 188 "sintatico.mly"
                 ( Or )
# 2176 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 189 "sintatico.mly"
                  ( And )
# 2221 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 190 "sintatico.mly"
                       ( Add )
# 2266 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 191 "sintatico.mly"
                          ( Sub )
# 2311 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 192 "sintatico.mly"
                             ( Mul )
# 2356 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 193 "sintatico.mly"
                       ( Div )
# 2401 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 194 "sintatico.mly"
                        ( More_Than )
# 2446 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 195 "sintatico.mly"
                        ( Less_Than )
# 2491 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 196 "sintatico.mly"
                              ( More_Equal_Than )
# 2536 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 197 "sintatico.mly"
                              ( Less_Equal_Than )
# 2581 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 198 "sintatico.mly"
                     ( Eq )
# 2626 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
          
# 199 "sintatico.mly"
                        ( Dif )
# 2671 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
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
# 2716 "sintatico.ml"
          
        in
        
# 181 "sintatico.mly"
                                             ( ExpBin (op, le, re) )
# 2722 "sintatico.ml"
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
# 182 "sintatico.mly"
                                                          ( e )
# 2759 "sintatico.ml"
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
# 2784 "sintatico.ml"
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
# 2851 "sintatico.ml"
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
# 2913 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (Sintatico_arvore.tipo) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sintatico_arvore.funcao) = 
# 81 "sintatico.mly"
                                                                                                               ( Funcao(_1, ExpVar _2, _4, _7, ExpInt 1) )
# 2922 "sintatico.ml"
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
# 2940 "sintatico.ml"
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
# 2971 "sintatico.ml"
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
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 55 "sintatico.mly"
       (string)
# 3010 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Sintatico_arvore.includee option) = 
# 74 "sintatico.mly"
                      ( Some(Includes _1) )
# 3018 "sintatico.ml"
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
# 125 "sintatico.mly"
         ( None )
# 3036 "sintatico.ml"
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
# 126 "sintatico.mly"
                               ( Some(_2) )
# 3067 "sintatico.ml"
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
# 3104 "sintatico.ml"
        ) = 
# 71 "sintatico.mly"
                              ( _2 )
# 3108 "sintatico.ml"
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
# 3133 "sintatico.ml"
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
# 3170 "sintatico.ml"
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
# 169 "sintatico.mly"
                ( [_1] )
# 3195 "sintatico.ml"
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
# 170 "sintatico.mly"
                          ( _1 @ [_3] )
# 3232 "sintatico.ml"
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
# 3257 "sintatico.ml"
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
# 3282 "sintatico.ml"
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
# 3332 "sintatico.ml"
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
# 3363 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 67 "sintatico.mly"
       (Sintatico_arvore.programa)
# 3373 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/Users/macbookomega/.opam/system/lib/menhir/standard.mly"
  


# 3382 "sintatico.ml"
