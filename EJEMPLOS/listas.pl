%i. Determinar la longitud de la lista

longitudLista([], 0).

longitudLista([_|COLA],N) :- longitudLista(COLA,N1), N is N1 + 1.

%ii. Contar cuantas veces aparece un determinado elemento en la lista.

%el primer parametro es donde se coloca la lista, el segundo es el valor que se desea contar las apariciones y Cantidad es el resultado de la cantidad de veces que aparece X en la lista

aparece([], X, 0).

aparece([X|L], X, Cantidad) :- 	
				
				!,

				aparece(L, X, Cantidad1), 

				Cantidad is Cantidad1+1.

aparece([Y|L], X, Cantidad) :- 

				aparece(L, X, Cantidad).
				
%iii. Reemplazar todas las ocurrencias de un determinado elemento en la lista por otro.

%El primer parametro debe ser la lista a modificar, el segundo una variable, el tercer el valor que se desea modificar y el cuarto es el valor por el que se quiere reemplazar el valor del tercer parametro

reemplazar([], [], V, Z).

reemplazar([X|L], [Z|L2], V, Z) :- 
	
				X==V, 
			
				reemplazar(L, L2, V, Z).

reemplazar([X|L], [X|L2], V, Z) :- 	

				X=V, %Deberia ser distinto
		
				reemplazar(L, L2, V, Z).
