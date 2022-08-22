concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionarn(_, [], []).
rotacionarn(0, L, L).
rotacionarn(Z, [Y|P1], P2) :- Z > 0, Z2 is (Z - 1), concatenar(P1, [Y], P3), rotacionarn(Z2, P3, P2).

