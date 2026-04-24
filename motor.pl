% Load Librerías
:- use_module(library(lists)).

todos_los_personajes( Ps ) :-
    findall( P, atributo( P, especie, _ ), Ps ).

% Filtra personajes que tienen Attr = Val
filtrar( Attr, Val, Candidatos, Restantes ) :-
    include( tiene( Attr, Val ) , Candidatos, Restantes ).

tiene( Attr, Val, P ) :-
    atributo( P, Attr, Val ).
