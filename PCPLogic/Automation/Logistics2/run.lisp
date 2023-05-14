(setq domainfile "logistics-domain.pddl")
(setq problemfile "logistics-problem.pddl")
(setq outputfile "logistics2")
(setq planfile "solution.plan")

(time
  (progn
    (load "../auto/convert_agda")
    (load "../auto/solver")))

(print "typechecking...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))
