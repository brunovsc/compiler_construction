
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Expected type\n"
    | 4 ->
        "Expected identivier\n"
    | 5 ->
        "Invalid identifier\n"
    | 6 ->
        "Expected arguments or ')'\n"
    | 11 ->
        "Expected identifier\n"
    | 13 ->
        "Expected ')'\n"
    | 14 ->
        "Expected '{'\n"
    | 17 ->
        "Expected '{'\n"
    | 19 ->
        "Expected '('\n"
    | 20 ->
        "Expected expression\n"
    | 66 ->
        "Invalid expression\n"
    | 67 ->
        "Expected '{'\n"
    | 68 ->
        "Invalid command\n"
    | 176 ->
        "Invalid command\n"
    | 69 ->
        "Expected '('\n"
    | 70 ->
        "Expected expression\n"
    | 71 ->
        "Invalid expression\n"
    | 72 ->
        "Expected '{'\n"
    | 73 ->
        "Expected case\n"
    | 169 ->
        "Expected ':'\n"
    | 170 ->
        "Invalid command\n"
    | 172 ->
        "Invalid command\n"
    | 74 ->
        "Expected expression\n"
    | 75 ->
        "Expected character\n"
    | 76 ->
        "Expected '\n"
    | 77 ->
        "Expected ':'\n"
    | 78 ->
        "Invalid command\n"
    | 160 ->
        "Invalid command\n"
    | 161 ->
        "Invalid switch structure\n"
    | 163 ->
        "Expected ':'\n"
    | 164 ->
        "Invalid command\n"
    | 165 ->
        "Invalid expression\n"
    | 166 ->
        "Expected ';'\n"
    | 174 ->
        "Wrong switch case structure\n"
    | 18 ->
        "Invalid command\n"
    | 79 ->
        "Invalid command\n"
    | 80 ->
        "Expected string\n"
    | 81 ->
        "Expected ','\n"
    | 82 ->
        "Expected '&'\n"
    | 83 ->
        "Expected identifier\n"
    | 84 ->
        "Invalid identifier\n"
    | 85 ->
        "Expected ';'\n"
    | 87 ->
        "Expected expression\n"
    | 21 ->
        "Invalid expression\n"
    | 64 ->
        "Invalid expression\n"
    | 22 ->
        "Expected expression\n"
    | 88 ->
        "Invalid expression\n"
    | 33 ->
        "Expected expression\n"
    | 34 ->
        "Invalid command\n"
    | 42 ->
        "Expected expression\n"
    | 43 ->
        "Invalid command\n"
    | 35 ->
        "Expected expression\n"
    | 44 ->
        "Expected expression\n"
    | 45 ->
        "Invalid command\n"
    | 48 ->
        "Expected expression\n"
    | 49 ->
        "Invalid command\n"
    | 38 ->
        "Expected expression\n"
    | 50 ->
        "Expected expression\n"
    | 51 ->
        "Expected ';'\n"
    | 52 ->
        "Expected expression\n"
    | 53 ->
        "Expected ';'\n"
    | 54 ->
        "Expected expression\n"
    | 55 ->
        "Expected ';'\n"
    | 40 ->
        "Expected expression\n"
    | 56 ->
        "Expected expression\n"
    | 57 ->
        "Expected ';'\n"
    | 58 ->
        "Expected expression\n"
    | 59 ->
        "Expected ';'\n"
    | 46 ->
        "Expected expression\n"
    | 47 ->
        "Invalid command\n"
    | 28 ->
        "Expected operator\n"
    | 29 ->
        "Unexpected operator\n"
    | 90 ->
        "Invalid command\n"
    | 91 ->
        "Expected LITERAL_STRING\n"
    | 60 ->
        "Invalid expression\n"
    | 31 ->
        "Expected parameters\n"
    | 32 ->
        "Invalid expression\n"
    | 93 ->
        "Expected ';'\n"
    | 114 ->
        "Expected '}' or commands\n"
    | 115 ->
        "Expected ';'\n"
    | 116 ->
        "Expected expression\n"
    | 117 ->
        "Expected ']'\n"
    | 118 ->
        "Expected ',' or ';'\n"
    | 120 ->
        "Expected expression\n"
    | 121 ->
        "Expected ';'\n"
    | 95 ->
        "Expected '('\n"
    | 96 ->
        "Expected identifier\n"
    | 97 ->
        "Expected ')'\n"
    | 98 ->
        "Expected '{'\n"
    | 99 ->
        "Invalid command\n"
    | 152 ->
        "Expected ';'\n"
    | 153 ->
        "Invalid command\n"
    | 154 ->
        "Expected '{'\n"
    | 155 ->
        "Invalid command\n"
    | 156 ->
        "Expected ';'\n"
    | 100 ->
        "Invalid command\n"
    | 131 ->
        "Expected '}'\n"
    | 132 ->
        "Invalid command\n"
    | 178 ->
        "Invalid command\n"
    | 103 ->
        "Invalid expression\n"
    | 104 ->
        "Invalid expression\n"
    | 106 ->
        "Expected '('\n"
    | 107 ->
        "Invalid command\n"
    | 108 ->
        "Invalid expression\n"
    | 109 ->
        "Invalid expression\n"
    | 110 ->
        "Invalid expression\n"
    | 111 ->
        "Invalid expression\n"
    | 147 ->
        "Invalid command\n"
    | 148 ->
        "Expected '{'\n"
    | 149 ->
        "Invalid command\n"
    | 150 ->
        "Expected ';'\n"
    | 112 ->
        "Expected '{'\n"
    | 113 ->
        "Invalid command\n"
    | 124 ->
        "Invalid command\n"
    | 126 ->
        "Expected '('\n"
    | 127 ->
        "Expected expression\n"
    | 128 ->
        "Expecte ')'\n"
    | 129 ->
        "Expected ';'\n"
    | 125 ->
        "Invalid command\n"
    | 182 ->
        "Expected '('\n"
    | 183 ->
        "Expected type\n"
    | 185 ->
        "Expected '{'\n"
    | 186 ->
        "Invalid command\n"
    | 187 ->
        "Expected ';'\n"
    | 191 ->
        "Expected type\n"
    | 3 ->
        "Invalid command\n"
    | 181 ->
        "Expected identifier\n"
    | _ ->
        raise Not_found
