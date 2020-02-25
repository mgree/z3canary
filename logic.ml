let main () =
  let cfg = [("model", "false"); ("proof", "false")] in
  let ctx = Z3.mk_context cfg in
  let solver = Z3.Solver.mk_solver ctx None in
  let var_x = Z3.Symbol.mk_string ctx "x" in
  let var_y = Z3.Symbol.mk_string ctx "y" in
  let bool_sort = Z3.Boolean.mk_sort ctx in
  let x = Z3.Expr.mk_const ctx var_x bool_sort in
  let y = Z3.Expr.mk_const ctx var_y bool_sort in
  let phi =
    Z3.Boolean.mk_or ctx
      [ Z3.Boolean.mk_and ctx [x; Z3.Boolean.mk_not ctx y]
      ; Z3.Boolean.mk_and ctx [Z3.Boolean.mk_not ctx x; y]
      ]
  in
  Z3.Solver.add solver [ phi ];
  let status = Z3.Solver.check solver [] in
  Z3.Solver.reset solver;
  print_endline (Z3.Solver.string_of_status status)
;;

main ()
