/* Base de Conocimiento ALMACEN DON MANOLO */

producto(lacteo, leche).
producto(lacteo, manteca).
producto(lacteo, crema).
producto(lacteo, yogurt).
producto(fiambre, queso).
producto(fiambre, jamonCrudo).
producto(fiambre, jamonCocido).
producto(fiambre, salame).
producto(panaderia, pan).
producto(panaderia, factura).
producto(panaderia, tortilla).
producto(panaderia, galleta).
producto(bebida, agua).
producto(bebida, gaseosa).
producto(bebida, jugo).
producto(bebida, soda).
producto(golosina, chocolate).
producto(golosina, caramelo).
producto(golosina, mantecol).
producto(golosina, bombones).
producto(golosina, nugaton).

precio(leche, 77).
precio(manteca, 62).
precio(crema, 95).
precio(yogurt, 53).
precio(queso, 80).
precio(jamonCrudo, 170).
precio(jamonCocido, 100).
precio(salame, 85).
precio(pan, 80).
precio(factura, 20).
precio(tortilla, 10).
precio(galleta, 75).
precio(agua, 86).
precio(gaseosa, 130).
precio(jugo, 98).
precio(soda, 100).
precio(chocolate, 116).
precio(caramelo, 35).
precio(mantecol, 87).
precio(bombones, 140).
precio(nugaton, 51).


/* Predicados */
/* a - escriba una regla en prolog que le permita obtener todos los
lacteos cuyo precio es mayor al valor dado */
mayorque(P, R, E) :- producto(lacteo, P), precio(P, R), R > E.

/* b - Escriba una regla que permita determinar los productos
        que entran en promocion.
        promo: el 2do al 70%, tiene que ser un producto de misma cagetoria, y
        el promedio de precios debe ser menor que 200. En ese caso, el cliente
        lleva los 2 y paga el producto de menor valor con 70 de descuento
*/

condicion1(P1, P2) :- producto(T1, P1), producto(T2, P2), T1 = T2, !.
condicion2(P1, P2) :- precio(P1, X1), precio(P2, X2), (X1 + X2)/2 < 100, !.
entrapromo(P1, P2, R) :- condicion1(P1, P2), condicion2(P1, P2), precio(P1, X1), precio(P2, X2), R is X1+(X2*0.3).