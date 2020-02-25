let main () =
  let cfg = [("model", "false"); ("proof", "false")] in
  let ctx = Z3.mk_context cfg in
  let solver = Z3.Solver.mk_solver ctx None in
  let var_x = Z3.Symbol.mk_string ctx "x" in
  let bool_sort = Z3.Boolean.mk_sort ctx in
  let x = Z3.Expr.mk_const ctx var_x bool_sort in
  Z3.Solver.add solver [x];
  let status = Z3.Solver.check solver [] in
  Z3.Solver.reset solver;
  print_endline (Z3.Solver.string_of_status status)
;;

main ()
