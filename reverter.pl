concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([], []).
reverter([H|L], LR) :- reverter(L, LT), concatenar(LT, [H], LR).
