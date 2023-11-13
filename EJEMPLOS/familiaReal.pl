progenitor(carlos, isabelII).
progenitor(carlos, felipe).
progenitor(william, carlos).
progenitor(william, diana).
progenitor(harry, carlos).
progenitor(harry, diana).
progenitor(george, william).
progenitor(george, catherine).
progenitor(charlotte, william).
progenitor(charlotte, catherine).
progenitor(louis, william).
progenitor(louis, catherine).
progenitor(archie, meghan).
progenitor(archie, harry).

femenino(isabelII).
femenino(diana).
femenino(charlotte).
femenino(catherine).
femenino(meghan).
masculino(felipe).
masculino(carlos).
masculino(william).
masculino(harry).
masculino(george).
masculino(louis).
masculino(archie).

padreDe(Y, X) :- progenitor(Y, X), masculino(X).
madreDe(Y, X) :- progenitor(Y, X), femenino(X).
hijoDe(Y, X) :- progenitor(Y, X), masculino(Y).
hijaDe(Y, X) :- progenitor(Y, X), femenino(Y).
abueloDe(Y, X) :- progenitor(Y, Z), progenitor(Z, X), masculino(X).
abuelaDe(Y, X) :- progenitor(Y, Z), progenitor(Z, X), femenino(X).
hermanoDe(Y, X) :- progenitor(Y, Z), progenitor(X, Z). %Deberia controlar que X sea distinto de Y
primoDe(Y, X) :- progenitor(Y, Z), progenitor(Z, T), progenitor(X, S), progenitor(S, T), masculino(Y). %Deberia controlar que no sean iguales S y T
primoDe(Y, X) :- progenitor(Y, Z), progenitor(Z, T), progenitor(X, S), progenitor(S, T), femenino(Y).
tioDe(Y, X) :- progenitor(Y, Z), progenitor(X, H), progenitor(Z, H), masculino(X). %Deberia controlar que X sea distinto de Z
tioDe(Y, X) :- progenitor(Y, Z), progenitor(X, H), progenitor(Z, H), femenino(X).


bisabueloDe(Y, X) :- progenitor(Y, H), abueloDe(H, X), masculino(X).
