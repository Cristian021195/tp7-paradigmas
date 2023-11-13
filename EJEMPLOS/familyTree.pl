padresDe(lena, isac).
padresDe(lena, clara).
padresDe(lauty, isac).
padresDe(lauty, clara).
padresDe(isac, hugo).
padresDe(isac, maria).
padresDe(clara, gloria).
padresDe(clara, jose).
padresDe(ely, jose).
padresDe(ely, gloria).
padresDe(martin, ely).
padresDe(martin, tano).
padresDe(maria, rosa).
padresDe(maria, angel).
padresDe(hugo, marisa).
padresDe(hugo, miguel).

padres(A, B) :- padresDe(A, B).
abuelos(A, C) :- padresDe(A, B), padresDe(B, C).
bisabuelos(A,C) :- padres(A, B), abuelos(B,C).
/* bisabuelos(A,B) :- abuelos(A,X), bisabuelos(X,B). */


/* NOTAS
    - padresDe(lauty, X). = isac,clara
    - padresDe(X, lauty). = falso, ya que lautaro no cumple rol de padre en la base de conocimientos
    - padresDe(X, isac). = lauty, lena, isac cumple rol de padre en este caso solo lautaro
    - padresDe(X, ely). = martin, ya que ely tiene un solo hijo
    - en la funcion abuelos, tiene rango A-C ya que buscamos saltar un nivel en el arbol
*/