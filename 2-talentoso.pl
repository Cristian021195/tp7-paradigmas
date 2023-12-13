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
/*aggregate(count, X^fact('A',X), Count).  aggregate_all(count, is_man(X), Count)*/
incremento(X, R) :- R is X+1.

/*talentosa(X, R) :- R is 0,talento(X, Z), R is incremento(R, B).*/
talentosa(X, R) :- talento(X, Z), R is 0.

/* ii : dos personas son semejantes si poseen el mismo talento */
semejantes(X, Y) :- talento(X, Z), talento(Y,Z).
