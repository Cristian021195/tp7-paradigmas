/*  COMANDOS
    - Actions: (; for next solution, a for all solutions, RET to stop) ? d
    - Salida por consola: write('hello, world'). 
*/

/*progenitor(yo, masculino(hugoG)).
progenitor(yo, femenino(mariaR)).*/

/* PUNTO 1a */
progenitor(lilyEvans, grandpaEvans).
progenitor(jamesPotter, grandpaPotter).
progenitor(harry, jamesPotter).
progenitor(harry, lilyEvans).
progenitor(ginny, mollyW).
progenitor(ginny, arthurW).
progenitor(fred, mollyW).
progenitor(fred, arthurW).
progenitor(ron, mollyW).
progenitor(ron, arthurW).
progenitor(george, mollyW).
progenitor(george, arthurW).
progenitor(jamesSirius, harry).
progenitor(albusSeverus, harry).
progenitor(lilyLuna, harry).
progenitor(jamesSirius, ginny).
progenitor(albusSeverus, ginny).
progenitor(lilyLuna, ginny).
progenitor(rose, ron).
progenitor(rose, hermione).
progenitor(hugo, ron).
progenitor(hugo, hermione).
/*abuelo(X,Z) :- progenitor(X,Y), progenitor(Y,Z).*/
abuelos(X,Y) :- progenitor(X,Z), progenitor(Z,Y).

/* PUNTO 1b 
    - progenitor(harry, X). : jamesPotter y lilyEvans
    - progenitor(X, rose). : no exite, rose no tiene hijos
    - progenitor(mollyW, X), progenitor(X, hugo). : no existen
    - progenitor(X, fred), progenitor(X, ron). : no, xq es conjuncion
*/

/* PUNTO 1c 
    - ¿Quien es el progenitor de Ginny?: mollyW y arthurW, progenitor(ginny, X).
    - ¿Tiene Hermione algún hijo?: rose, y hugo, progenitor(X, hermione).
    - ¿Quienes son los abuelas de Lily Luna?: jamesPotter, lilyEvans, mollyW, arthurW , abuelo(lilyLuna, X). 
*/


/* PUNTO 1d */
masculino(grandpaEvans).
masculino(grandpaPotter).
masculino(harry).
masculino(jamesPotter).
masculino(arthurW).
masculino(fred).
masculino(ron).
masculino(george).
masculino(jamesSirius).
masculino(albusSeverus).
masculino(hugo).
femenino(lilyEvans).
femenino(ginny).
femenino(mollyW).
femenino(lilyLuna).
femenino(rose).
femenino(hermione).

padreDe(X, Y) :- progenitor(X,Y), masculino(Y). 
madreDe(X, Y) :- progenitor(X,Y), femenino(Y). 
hijoDe(X,Y) :- progenitor(Y,X), masculino(Y). 
hijoDe(X,Y) :- progenitor(Y,X), femenino(Y). 
hijos(X,Y) :- progenitor(Y,X).
/*abueloDe(X,Y) :- abuelo(X, Y), masculino(Y). % ok tambien */
abuelos(X,Y) :- progenitor(X,Z), progenitor(Z,Y).
abueloDe(X,Y) :- progenitor(X,Z), progenitor(Z,Y), masculino(Y).
abuelaDe(X,Y) :- abuelos(X, Y), femenino(Y).
hermanos(X, Y) :- progenitor(X, Z),!, progenitor(Y, Z), Y\=X.
/* % solucion anterior hermanos(X, Y) :- padreDe(X, Z), progenitor(Y, Z). */
tios(X,Y) :- progenitor(X,Z), progenitor(Y, Z).
tioDe(X,Y) :- progenitor(X,Z), hermanos(Z, Y), X\=Z, masculino(Y).
tiaDe(X,Y) :- progenitor(X,Z), hermanos(Z, Y), femenino(Y).
bisabueloDe(X, Y) :- abuelos(X,Z), progenitor(Z, Y).
primos(X,Y) :- abuelos(X,Z) ,abuelos(Y,Z), X\=Y.
primoDe(X,Y) :- abueloDe(X,Z),abueloDe(Y,Z), masculino(Y), X\=Y.
primaDe(X,Y) :- abuelaDe(X,Z) ,abuelaDe(Y,Z), femenino(Y), X\=Y.

/* PUNTO 1e 
    bisabueloDe(X, Y) :- abuelos(X,Z), progenitor(Z, Y).
*/


/*masculino(ron).*/

/*hijo(hermione, rose).
hijo(hermione, hugo).*/

/*abuelos(X,Z) :- progenitor(X,Y), progenitor(Y,Z).*/

/*
    c) 
        ¿Quien es el progenitor de Ginny?:
            progenitor(ginny, X).
        ¿Tiene Hermione algun hijo?: 
            
        ¿Quienes son los abuelos de lily luna?
            abuelo(lilyLuna, X). 

    d)  Ejemplo: padreDe(Y,X) :- progenitor(Y, X), masculino(X).
        Expresar en termino que la relacion padreDe se puede expresar con la siguiente regla en prolog
            Madre: madreDe(Y,X) :- progenitor(Y, X), femenino(X).
            
            hijoDe(X,Y) :- progenitor(X,Y), masculino(X).
            hijaDe :- hija(Y,X), femenino(X).

            abueloDe :- abuelo(X,Z), masculino(Z).
            abuelaDe :- abuelo(X,Z), femenino(Z).

            hermanos :- progenitor(X,hijo(Y, Z)), /X.

            
*/


