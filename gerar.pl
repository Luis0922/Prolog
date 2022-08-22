concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

gerar(Y, Y, [Y]).
gerar(X, F, [X,Y|L]) :- Y is X+1, concatenar([Y], L, LT), gerar(Y, F, LT).
