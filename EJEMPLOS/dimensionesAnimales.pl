masgrande(elefante, caballo).
masgrande(caballo, perro).
masgrande(perro, raton).
masgrande(raton, hormiga).

muchomasgrande(A,C) :- masgrande(A,B), masgrande(B,C).

/* Reglas de Recursividad - Caso base */
muchisimomasgrande(A,B) :- masgrande(A,B). 
/* Reglas de Recursividad - Caso general */
muchisimomasgrande(A,B) :- masgrande(A,X), muchisimomasgrande(X,B). 




/* NOTAS 
    - muchomasgrande(elefante, raton). = false, xq no entra en el dominio, se deberia definir con regla recursiva
    - muchomasgrande(elefante, hormiga). = false, xq no entra en el dominio, se deberia definir con regla recursiva
    - muchomasgrande(caballo, raton). = true
    * contiguos o de a cada 3 lineas, exeptuando el valor de la izquierda de la linea mas arriba
    * dominio de mucho mas grande [a,b,c], tomando elefante-raton, el dominio es [a,b,c,d] por ende no hay relacion a-d

    - Regla de recursividad: pasos de elefeante a raton, numero de llamados recursivos
        1 - ¿Elefante es mas grande que raton? - falso
        2 - ¿Caballo es mas grande que raton? - falso
        3 - ¿Perro es mas grande que raton? - verdadero, retorna perro
    - consejos:
        - siempre hacer primero el caso base
        - la llamada recursiva siempre a la derecha, evalua los hechos no recursivos, luego los recursivos
*/