talento(juan, cantar).
talento(pedro, cantar).
talento(maria, cantar).
talento(juan, pintar).
talento(patricia, pintar).
talento(lucas, bailar).
talento(pedro, escribir).
talento(luisa, escribir).
talento(ana, escribir).


/* i : talentoso - consultar: una persona es talentosa si tiene por lo menos 2 talentos */
talentosa(X) :- talento(X, Z), talento(X, Y), Z \= Y.

/* ii : dos personas son semejantes si poseen el mismo talento */
semejantes(X, Y) :- talento(X, Z), talento(Y,Z).
