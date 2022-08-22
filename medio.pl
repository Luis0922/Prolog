medio([], 0).
medio(L, M) :- L \== [], soma(L, S), nelementos(L, T), M is S/T.

soma([], 0).
soma([X|L], S) :- soma(L, S1), S is X+S1.

nelementos([], 0).
nelementos([_|L], T) :- nelementos(L, T1), T is T1+1.
