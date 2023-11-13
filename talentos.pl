talento(juan, cantar).
talento(pedro, cantar).
talento(maria, cantar).
talento(juan, pintar).
talento(patricia, pintar).
talento(lucas, bailar).
talento(pedro, escribir).
talento(luisa, escribir).
talento(ana, escribir).


/* talentoso: una persona es talentosa si tiene por lo menos 2 talentos */
/*aggregate(count, X^fact('A',X), Count).*/
talentoso(X) :- talento(X,Y).