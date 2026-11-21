edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Qatif').
edge('Qatif', 'Madinah').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).
path(From, To, Visited, Path) :-
    edge(From, X),
    not(member(X, Visited)),
    path(X, To, [X | Visited], Path).
