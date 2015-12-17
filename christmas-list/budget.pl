;; Program to relate my christmas projects budget
;; @Author Luiz A. M. Ferreira

;; Facts about the project
;; proj(proj-name, present-object, value-proj, value-proj-expected).

    ;; sf49ers Proj
proj(sf49ers, footballBall, .0, 110.).
proj(sf49ers, flagA, .0, 65.).
proj(sf49ers, flagB, .0, 90.).
proj(sf49ers, card, .0, 5.).

    ;; 
    proj()
;; Rules about the budget

    ;; budgetExpected
;; @return the value budget expected
    expected(Return, Proj, [H|T]) :- proj(Proj, H, _, X), expected(ReturnT, Proj, T), Return is X + ReturnT.

    ;; budgetReal
    ;; @return the current real value of a budget project
    real(Return, Proj, [H|T]) :- proj(Proj, H, X, _), real(ReturnT, Proj, T), Return is X + ReturnT.

    ;; actuallyBudget
    ;; @return the sum of the diference between value-proj and value-proj-expected
    actually(Return, Proj, List) :- real(X, Proj, List), expected(Y, Proj, List), Return is X - Y.

    ;; Rules for main
    main(X) :- writeOp(), read(X), writeProj(), read(Proj), objProjList(Proj, List), callRule(X, Proj, List, Return), write(Return).
    writeOp() :- write("1 - Orcamento desejado.\n2 - Orcamento alcancado.\n3 - Diferenca entre os orcamentos.\n0 - Sair.\nOp: ").
    writeProj() :- write("\nProjetos:\nsf40ers.\nPor favor, entre com o projeto desejado: ").
    
    callRule(1, Proj, List, Return) :- expected(Return, Proj, List).
    callRule(2, Proj, List, Return) :- real(Return, Proj, List).
    callRule(3, Proj, List, Return) :- actually(Return Proj, List).

;; Rules to create a list

