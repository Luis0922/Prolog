ordenar([], []).
ordenar(L1, [X|LR]) :- comp(L1, X, LT), ordenar(LT, LR).

comp([X], X, []).
comp([X|L1], Y, [X|LR]) :- comp(L1, Y, LR), X >= Y.
comp([X|L1], X, [Y|LR]) :- comp(L1, Y, LR), X < Y.

