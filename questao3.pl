:- initialization(main).

tiraRepetidas([],[]).
tiraRepetidas([Elem|Cauda],[Elem|Z]) :- retirarTodas(Elem,Cauda,Lista), tiraRepetidas(Lista,Z).

retirarTodas(_,[],[]).
retirarTodas(Elem,[Elem|Cauda],L) :- retirarTodas(Elem,Cauda,L).
retirarTodas(Elem,[Z|Y],[Z|W]) :- Elem =\= Z, retirarTodas(Elem,Y,W).

somaNaoDuplicada(X,Y) :- tiraRepetidas(X,Z), soma(Z,Y).  

soma([],0).
soma([Elem|Cauda],Y) :- soma(Cauda,Y1), Y is Elem+Y1.

main:-
read(X),
somaNaoDuplicada(X,Y),
write(Y),nl,
halt(0).
