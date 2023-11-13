%i. El producto de los primeros n números naturales, al llamar a la regla siempre el segundo parametro debe ser una variable, lo mismo ocurre con suma.
/* Simplificar la lógica empleada, solo hace falta 2 parametros en la regla Factorial */

factorial(N, Salida) :- factorial(N, 1, Salida).

factorial(0, Salida, Salida) :- !.

factorial(N, Acc, Salida) :-

			NuevaN is N - 1,
    			
			NuevaAcc is Acc * N,
   			
			factorial(NuevaN, NuevaAcc, Salida).

%ii. La suma de los n primeros números pares.

/* Se pide la suma de los n primeros numeros naturales. Ej: N = 3, deberia retornar la suma de 2 + 4 + 6 */

par(N):- mod(N,2) =:= 0.

suma(N, Salida) :- suma(N, 0, Salida).

suma(0, Salida, Salida) :- !.

suma(N, Acc, Salida) :-
			(par(N) ->

			NuevaN is N - 1,
    			
			NuevaAcc is Acc + N,
   			
			suma(NuevaN, NuevaAcc, Salida);

			NuevaN is N - 1,
	
			NuevaAcc is Acc,
		
			suma(NuevaN, NuevaAcc, Salida)).
