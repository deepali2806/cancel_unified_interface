(* open Effect *)
type resume_result = Resume_success | Resume_failure

type 'a resumer = ('a, exn) result -> resume_result
type _ Effect.t += Suspend : ('a resumer -> bool) -> 'a Effect.t
