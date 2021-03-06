(** Convert a XML document to a {!Syntax.t}. *)

(** Convert a whole document to a whole {!Syntax.t}. *)
val parse_xml : Xml.xml -> Syntax.t

(** Parse only a {!Syntax.action}.

    The argument is a list of children of an [<action>] element.
*)
val parse_action : Xml.xml list -> Syntax.action

(** Parse only a {!Syntax.bullet}.

    The argument is a list of children of a [<bullet>] element.
*)
val parse_bullet : Xml.xml list -> Syntax.bullet

(** Parse only a {!Syntax.fire}.

    The argument is a list of children of a [<fire>] element.
*)
val parse_fire : Xml.xml list -> Syntax.fire

(** Parse only a {!Syntax.expr}. *)
val parse_expr : string -> Syntax.expr

(** Parse using custom syntax *)
val parse_pat : ?fname:string -> in_channel -> Syntax.t

(** Parse using custom syntax from a string *)
val parse_pat_string : string -> Syntax.t

(** Parse file, guess using extension *)
val parse_auto : string -> Syntax.t

(** Return a string highlighting a part of a file.
    Arguments are: file, line number, start column, end column.
*)
val highlight : in_channel -> int -> int -> int -> string
