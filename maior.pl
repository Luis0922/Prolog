compara(X,X,X).
compara(X,Y,X):- X > Y.
compara(X,Y,Y):- Y > X.

maior([X], X).
maior([X|L], Y) :- L \== [], maior2(L,Z), compara(X,Z,Y).
maior2([],0).
maior2([X|L], Y) :- maior2(L,Z), compara(X,Z,Y).
