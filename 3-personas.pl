/* 3 - Dada la tabla, escriba en prolog */
/* a. Una base de conocimiento adecuada */
persona(luis,20,soltero).
persona(juan,72,viudo).
persona(pedro,40,casado).
persona(julia,17,casada).
persona(maria,46,soltera).
persona(andres,50,casado).
persona(rocio,67,soltera).
persona(joaquin,15,soltero).
persona(cecilia,35,soltera).
persona(felicia,60,soltera).
persona(santiago,45,casado).
persona(veronica,34,casada).
persona(eugenia,70,viuda).
persona(carlos,73,casado).


varon(luis).
varon(juan).
varon(pedro).
varon(andres).
varon(joaquin).
varon(santiago).
varon(carlos).
mujer(julia).
mujer(maria).
mujer(rocio).
mujer(cecilia).
mujer(felicia).
mujer(veronica).
mujer(eugenia).

vocales([a,e,i,o,u]).
/*
    vocales([H|_]).  a
    vocales([_|T]).  e,i,o,u
    vocales([H|T]).  H = a, T = e,i,o,u
*/


/* b. Las reglas para encontrar las personas menores de edad */
/*esmenor(R) :- persona(X, Y, _), Y < 18.*/
esmenor(X) :- persona(X, Y, _), Y < 18.
esmayor(X) :- persona(X, Y, _), Y >= 18.


/* c. Las reglas para encontrar a todas las personas que están en condiciones de 
acceder a la jubilación */
jubilacion(X) :- persona(X, Y, _), varon(X), Y >= 65.
jubilacion(X) :- persona(X, Y, _), mujer(X), Y >= 60.

/* d. Una regla que le permita establecer la relación "X es mayor que Y" */
esmayorque(X, Y) :- persona(X, A, _), persona(Y, B, _), A > B.

/* e. Una regla para determinar quiénes son coetáneos (menos de 10 años de diferencia 
de edad) */
absub(A, B, R) :- A > B, R is A - B ; A < B, R is B - A.
difdiez(X, Y, R) :- persona(X, A, _), persona(Y, B, _), absub(A, B, R), R < 10.
