/* a - dado un numero n natural */
/* i - escribir los primeros n numero pares */
npares(0, [0]).
npares(X, [X|T]) :- 
    X > 1, 0 is X mod 2, Y is X - 2, npares(Y, T), !.
npares(X, T) :- 
    X > 1, 1 is X mod 2, Y is X - 1, npares(Y, T).

nimpares(1, [1]) :- !. 
nimpares(X, [X|T]) :- 
    X > 1, 1 is X mod 2, Y is X - 2, nimpares(Y, T), !.
nimpares(X, T) :- 
    X > 1, 0 is X mod 2, Y is X - 1, nimpares(Y, T).

/* ii - calcular la suma de sus digitos */
nparesum(0, [0], 0).
nparesum(X, [X|T], R) :- 
    X > 1, 0 is X mod 2, Y is X - 2, nparesum(Y, T, Q), R is X+Q, !.
nparesum(X, T, Q) :- 
    X > 1, 1 is X mod 2, Y is X - 1, nparesum(Y, T, Q).

ndigitsum(0, [0], 0) :- !.
ndigitsum(X, [X|T], R) :-
    Y is X - 1, ndigitsum(Y, T, Q), R is X + Q.


/* iii - encontrar el digito de mayor valor H > A -> M = H ; M = A.
(H > A, R = H; R = A).
¿de una lista desordenada cualquiera? ¿de la lista de pares? */
mayordigito([X], X).
mayordigito([H | T], R) :-
    mayordigito(T, A),
    (H > A, R = H; R = A).

/* b */
/* i - crear una lista con los n primeros numeros naturales */
naturales(1, [1]).
naturales(X, [X|T]) :- X > 1, Y is X - 1, naturales(Y, T).

/* ii - Eliminar de la lista todos los elementos iguales a un valor dado */
filtrar([], E, []).
filtrar([H|T], E, [Rh|Th]) :- H \= E, Rh is H, filtrar(T, E, Th).
filtrar([H|T], E, [Rh|Th]) :- H = E, filtrar(T, E, Th).