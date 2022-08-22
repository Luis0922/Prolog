concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

remover(X, [X], []).
remover(_, [], []).
remover(X, [Y|L], R) :- X \== Y, remover(X, L, R1), concatenar([Y], R1, R).
remover(X, [Y|L], R) :- X == Y, L \== [], remover(X, L, R1), concatenar([], R1, R).
remover(X, [Y|L], R) :- X == Y, L == [], remover(X, L, R).
