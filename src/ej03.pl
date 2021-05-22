/*
	LISTAS:
	     Obtener suma de los elementos dentro de una lista.
*/

% para sumar los elementos de una lista
suma_lista([],0).		% Caso vacio

suma_lista([X|L],N) :- suma_lista(L,C), N is C+X.
/*
	:-suma_lista([4,7,2],N).
-----------------------------------------
	:-suma_lista([5,2,6,3,4,20],N).
-----------------------------------------
	:-suma_lista([7,5,-1],N).
*/