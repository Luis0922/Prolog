nelementos([], 0).
nelementos([_|L], T) :- nelementos(L, T1), T is T1+1.
