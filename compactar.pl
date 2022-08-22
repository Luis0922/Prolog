concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

compactar([],[]).
compactar([X|L], R) :- N is 1, comp(X, N, L, R).

comp(X,N,[],[[N,X]]).
comp(X,N,[Y|L],R) :- X == Y, N2 is N + 1, comp(X,N2,L,R).
comp(X,N,[Y|L],R) :- X \==Y, N2 is 1, comp(Y,N2,L,R1), concatenar([[N,X]], R1, R).