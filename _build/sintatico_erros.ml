
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Expected ';'\n"
    | 4 ->
        "Expected identifer\n"
    | 5 ->
        "Expected '('\n"
    | 6 ->
        "Expected ')' or variable declarations\n"
    | 11 ->
        "Expected identifier\n"
    | 13 ->
        "Expected ',' or ')'\n"
    | 14 ->
        "Expected variable declaration\n"
    | 17 ->
        "Expected '{'\n"
    | 19 ->
        "Expected '('\n"
    | 20 ->
        "Expected expression\n"
    | 71 ->
        "Expected Operation\n"
    | 72 ->
        "Expected '{'\n"
    | 73 ->
        "Expected command\n"
    | 180 ->
        "Expected '}'\n"
    | 74 ->
        "Expected '('\n"
    | 75 ->
        "Expected expression\n"
    | 76 ->
        "Expected ')'\n"
    | 77 ->
        "Expected '{'\n"
    | 78 ->
        "Expected 'case'\n"
    | 173 ->
        "Expected commands\n"
    | 174 ->
        "Expected commands\n"
    | 176 ->
        "Expected '}'\n"
    | 79 ->
        "Expected 6string\n"
    | 80 ->
        "Expected 5string\n"
    | 81 ->
        "Expected \"'\"\n"
    | 82 ->
        "Expected ':'\n"
    | 83 ->
        "Expected commands\n"
    | 164 ->
        "Expected 'switch' structure\n"
    | 165 ->
        "Expected 'switch' structure\n"
    | 167 ->
        "Expected ':'\n"
    | 168 ->
        "Expected commands\n"
    | 169 ->
        "Not expecting '}'\n"
    | 170 ->
        "Expected '8;'\n"
    | 178 ->
        "Not expecting 'while'\n"
    | 18 ->
        "Expecting commands\n"
    | 84 ->
        "Expected '('\n"
    | 85 ->
        "Expected 4string\n"
    | 86 ->
        "Expected ',' or ')'\n"
    | 87 ->
        "Expected '&'\n"
    | 88 ->
        "Expected identifer\n"
    | 89 ->
        "Expected ',' or ')'\n"
    | 90 ->
        "Expected ';'\n"
    | 92 ->
        "Expected expression\n"
    | 21 ->
        "Expected expression\n"
    | 69 ->
        "Expected ')'\n"
    | 22 ->
        "Expected expression\n"
    | 93 ->
        "Expected ';'\n"
    | 34 ->
        "Expected expression\n"
    | 35 ->
        "Expected ';' or expression\n"
    | 135 ->
        "Expected '}' or commands\n"
    | 136 ->
        "Unexpected '1-'\n"
    | 182 ->
        "Unexpected 'break'\n"
    | 43 ->
        "Expected 2string\n"
    | 44 ->
        "Unexpected '24while'\n"
    | 36 ->
        "Unexpected '23while'\n"
    | 45 ->
        "Unexpected '22while'\n"
    | 46 ->
        "Unexpected '21while'\n"
    | 49 ->
        "Unexpected '20while'\n"
    | 50 ->
        "Expected operator\n"
    | 39 ->
        "Unexpected '18while'\n"
    | 51 ->
        "Unexpected '17while'\n"
    | 52 ->
        "Expected operator or ')'\n"
    | 53 ->
        "Unexpected '15while'\n"
    | 54 ->
        "Unexpected '14while'\n"
    | 55 ->
        "Unexpected '13while'\n"
    | 56 ->
        "Unexpected '12while'\n"
    | 41 ->
        "Unexpected '11while'\n"
    | 57 ->
        "Unexpected '10while'\n"
    | 58 ->
        "Unexpected '9while'\n"
    | 59 ->
        "Unexpected '8while'\n"
    | 60 ->
        "Unexpected '7while'\n"
    | 47 ->
        "Unexpected '6while'\n"
    | 48 ->
        "Expected ';'\n"
    | 30 ->
        "Unexpected '4while'\n"
    | 31 ->
        "Unexpected '3while'\n"
    | 32 ->
        "Unexpected '2while'\n"
    | 33 ->
        "Unexpected '1while'\n"
    | 28 ->
        "Expected operator\n"
    | 29 ->
        "Expected arguments or ')'\n"
    | 95 ->
        "Expected '('\n"
    | 96 ->
        "Expected 1string\n"
    | 65 ->
        "Expected ',' or ')'\n"
    | 63 ->
        "Expected identifier\n"
    | 64 ->
        "Expected expression\n"
    | 98 ->
        "Expected ';'\n"
    | 122 ->
        "Expected identifier\n"
    | 123 ->
        "Expected ',' or ';' or attribution\n"
    | 124 ->
        "Expected expression\n"
    | 125 ->
        "Expected expression or ';'\n"
    | 100 ->
        "Expected '('\n"
    | 101 ->
        "Expected expression\n"
    | 102 ->
        "Expected expression\n"
    | 103 ->
        "Expected '{'\n"
    | 104 ->
        "Expected identifier\n"
    | 156 ->
        "Unexpected 'break'\n"
    | 157 ->
        "Unexpected '8-'\n"
    | 158 ->
        "Expected '{'\n"
    | 159 ->
        "Unexpected '7-'\n"
    | 160 ->
        "Unexpected 'break'\n"
    | 105 ->
        "Expected expression\n"
    | 106 ->
        "Expected '4;'\n"
    | 108 ->
        "Expected '3;'\n"
    | 110 ->
        "Expected expression\n"
    | 111 ->
        "Expected expression or ';'\n"
    | 113 ->
        "Expected '('\n"
    | 114 ->
        "Expected ';' or variable\n"
    | 115 ->
        "Expected variable attribution or ';'\n"
    | 116 ->
        "Expected expression\n"
    | 117 ->
        "Expected expression\n"
    | 118 ->
        "Expected ')'\n"
    | 119 ->
        "Unexpected '6-'\n"
    | 151 ->
        "Expected ')'\n"
    | 152 ->
        "Expected '{'\n"
    | 153 ->
        "Unexpected '5-'\n"
    | 154 ->
        "Unexpected 'break'\n"
    | 120 ->
        "Expected '('\n"
    | 121 ->
        "Unexpected '4-'\n"
    | 128 ->
        "Unexpected 'break'\n"
    | 130 ->
        "Expected '('\n"
    | 131 ->
        "Expected expression\n"
    | 132 ->
        "Expected ')'\n"
    | 133 ->
        "Expected '2;'\n"
    | 129 ->
        "Unexpected 'switch'\n"
    | 186 ->
        "Expected '1;'\n"
    | 187 ->
        "Expected params or ')'\n"
    | 189 ->
        "Expected '{' or ';'\n"
    | 190 ->
        "Unexpected '3-'\n"
    | 191 ->
        "Unexpected 'break'\n"
    | 195 ->
        "Command 'while' out of function scope\n"
    | 3 ->
        "Expected ';'\n"
    | 185 ->
        "Expected identifier after type 'float'\n"
    | _ ->
        raise Not_found
