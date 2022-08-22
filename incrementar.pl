incrementar([], []).
incrementar([X|L1], [Y|LR]) :- Y is X+1, incrementar(L1, LR).


