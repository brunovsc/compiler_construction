type programa = funcoes

and funcoes = funcao list
and funcao = Funcao of tipo * expressao * comando list * comandos * expressao

and includes = includee option
and includee = Includes of string

and comandos = comando list
and comando = CmdAtrib  of expressao * expressao
            | CmdDec    of expressao * tipo * expressao option
            | CmdPrintf of expressao list
            | CmdScanf  of expressao * expressao
            | CmdWhile  of expressao * comandos
            | CmdFor    of comando * expressao * comando * comandos
            | CmdDo     of comandos * expressao
            | CmdIf     of expressao * comandos * comandos option
            | CmdSwitch of expressao * cases * default option
            | CmdGetC   of string
            | CmdIncr   of expressao
            | CmdDecr   of expressao
            | CmdReturn of expressao

and expressao = ExpInt     of int
              | ExpVar     of string
              | ExpFloat   of float
              | ExpChar    of char
              | ExpString  of string
              | ExpBool    of bool
              | ExpBin     of operador * expressao * expressao
              | ExpUn      of operador * expressao
              | ChamaFunc  of expressao * expressao list

and expr = { valor: expressao;
             mutable tipoexp: tipo option
            }

and operador = Add | Sub | Mul | Div | Mod
             | More_Than | Less_Than | More_Equal_Than | Less_Equal_Than
             | Eq | Dif | Or | And | Not

and tipo = TINTEGER | TFLOAT | TCHAR | TBOOL | TSTRING

and cases = case list
and case = CASE of expressao * comandos
and default = DEFAULT of comandos

and variavel = VarSimples of string

type tvalor = VInt of int | VFloat of float | VBool of bool | VString of string
            | VChar of char

type info = { tipos: tipo;
              inicializada: bool;
              valor: tvalor option;
              mutable endereco: int option
            }
