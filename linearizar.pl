concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([],[]).
linearizar([Y|P1], P) :- linearizar(P1, P2), concatenar(Y, P2, P).
