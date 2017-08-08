:- initialization(main).

main:-
read(X),
inverteL(X,Y),
write(Y),nl,
halt(0).

concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):- concatenar(L1,L2,L3). 

inverteL([],[]).
inverteL([H|T],L):- inverteL(T,R), concatenar(R,[H],L).

