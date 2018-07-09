open Ast

type expressao = ExpVar of (expressao variavel) * tipo
              | ExpInt of int * tipo
              | ExpFloat of float * tipo
              | ExpChar of char * tipo
              | ExpString of string * tipo
              | ExpBool of bool * tipo
	      	  | ExpVoid
              | ExpOp of (oper * tipo) * (expressao * tipo) * (expressao * tipo)
              | ExpOpUn of (oper * tipo) * (expressao * tipo)
              | ExpChamada of ident * (expressao expressoes) * tipo


