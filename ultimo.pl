ultimo([X], X).
ultimo([_|L], U) :- ultimo(L, U).

