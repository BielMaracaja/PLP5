:- initialization(main).

main:-
read(X),
read(Y),
removeFirst(Y,X,Z),
write(Z),nl,
halt(0).

removeFirst(X, [], []).
removeFirst(X, [X|C], C).
removeFirst(X, [Y|C], [Y|D]) :- removeFirst(X, C, D).