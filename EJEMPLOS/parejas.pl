sereno(juan).
sereno(jose).
sereno(carolina).
decidido(juan).
decidido(luisa).
decidido(luis).
melancolico(maria).
melancolico(lucas).
reflexivo(carolina).
reflexivo(pedro).
soniador(jose).


talento(juan, cantar).
talento(pedro, cantar).
talento(maria, cantar).
talento(juan, pintar).
talento(patricia, pintar).
talento(lucas, bailar).
talento(pedro, escribir).
talento(luisa, escribir).
talento(ana, escribir).


compatible(Y, X) :- melancolico(Y), sereno(X) ; 

			melancolico(X), sereno(Y) ; 

			decidido(Y), reflexivo(X) ; 

			decidido(X), reflexivo(Y) ; 

			soniador(Y), decidido(X) ; 

			soniador(X), decidido(Y). %Deberia controlar que X sea distinto de Y


/* Los predicados melancolico, sereno, etc tienen un unico parametro */
sociable(Y) :- 	bagof([sereno(Y, X), decido(Y, X), melancolico(Y, X), reflexivo(Y, X), soniador(Y, X)], compatible(Y, X), Lista),
		
      		length(Lista,N),

		(N >= 2 -> write('Es sociable'); write('No es sociable')).

% ¿José y Maria son compatibles?
% compatible(jose, maria).

% ¿Quién/es son compatibles con Luisa?
% compatible(luisa, X).

% ¿Juan es una persona sociable?
% sociable(juan).


talentoso(Y) :- bagof(talento(Y, X), talento(Y, X), Lista),

		length(Lista, N),

		(N >= 2-> write('Es talentoso'); write('No es talentoso')). 

semejantes(Y, X) :- (talento(Y, Z), talento(X, Z) -> write('Son semenjantes'); write('No son semejantes')). %Deberia controlar que X sea distinto de Y
