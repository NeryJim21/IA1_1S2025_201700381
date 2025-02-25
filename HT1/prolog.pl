padre(oswaldo, gaby).
padre(oswaldo, nery).

madre(lilian, gaby).
madre(lilian, nery).

padre(valo, oswaldo).
padre(valo, esther).
padre(valo, guillermo).

padre(oscar, lilian).
padre(oscar, aracely).
padre(oscar, rony).
padre(oscar, ingrid).
padre(oscar, mirna).

madre(romelia, oswaldo).
madre(romelia, esther).
madre(romelia, guillermo).

madre(sofia, lilian).
madre(sofia, aracely).
madre(sofia, rony).
madre(sofia, ingrid).
madre(sofia, mirna).

padre(guillermo, alejandra).
padre(rony, victor).

madre(aracely, jaime).
madre(esther, mynor).

hermanos(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y.

abuelos(X, Y) :- (padre(X, P); madre(X, P)), (padre(P, Y); madre(P, Y)).

tio(X, Y) :- hermanos(X, P), padre(P, Y).
tio(X, Y) :- hermanos(X, M), madre(M, Y).

primo(X, Y) :- padre(P1, X), padre(P2, Y), hermanos(P1, P2).
primo(X, Y) :- madre(M1, X), madre(M2, Y), hermanos(M1, M2).
primo(X, Y) :- padre(P1, X), madre(M2, Y), hermanos(P1, M2).
primo(X, Y) :- madre(M1, X), padre(P2, Y), hermanos(M1, P2).