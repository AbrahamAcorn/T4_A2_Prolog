/*
	LISTAS PROLOG
*/

% Creacion de una lista
lista_01(L) :- L = [1,2,3,4,5].
/*
	:-lista_01(L).
*/

% Creacion de una sublista de la lista anterior
lista_02(L) :- Sublista = [2,3,4,5], L = [1|Sublista].
/*
	:-lista_02(L).
*/


lista_03(L) :- Sublista = [2,4,6,8], L = [1,3,5,7|Sublista].
/*
	:-lista_03(L).
*/

% Una lista siempre va a tener dos elementos, por que siempre, el primero es un elemento,
% y los dem�s son el resto de la cola
lista_04(L) :- Cabeza = 1, Cola = [2,3,4,5], L = [Cabeza|Cola].
/*
	Resultado:
	:-lista_04(L).
	true.
	
	L = [1, 2, 3, 4, 5].
*/

% Lo que se encuentra dentro de los corchetes de en medio es una lista
lista_05(L) :- Cabeza = 1, Cola = [2,3,[3.1,3.2,3.3],4,5], L = [Cabeza|Cola].
/*
	:-lista_05(L).
*/

% En este caso, la cabeza esta formado por el 0, y Cabeza
lista_06(L) :- Cabeza = 1, Cola = [2,3,[3.1,3.2,3.3],4,5], L = [0,Cabeza|Cola].
/*
	:-lista_06(L).
*/

listar_07(L) :- Cabeza = [1,1.1], Cola = [2,3,[3.1,3.2,3.3],4,5], L =[0,Cabeza|Cola].
/*
	:-lista_07(L).
*/


% Obtener Cabeza de la lista 07
obtenerCabeza([C|L],C).
/*
	:-obtenerCabeza([1,2,3,4,5],Cabeza).

*/

% Devolver la lista sin la cabeza de la lista 07
obtenerLista([C|L],L).
/*
	:-obtenerLista([C|L],L).
*/