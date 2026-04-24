% Load Librerías
:- use_module(library(lists)).

todos_los_personajes( Ps ) :-
    findall( P, atributo( P, especie, _ ), Ps ).

% Filtra personajes que tienen Attr = Val
filtrar( Attr, Val, Candidatos, Restantes ) :-
    include( tiene( Attr, Val ) , Candidatos, Restantes ).

tiene( Attr, Val, P ) :-
    atributo( P, Attr, Val ).

% Cuántos valores distintos tiene Attr entre los personajes actuales
score( Attr, Candidatos, Score ) :-
    findall( V, ( member( P, Candidatos ), atributo( P, Attr, V ) ), Vals ),
    sort( Vals, Unicos ),
    length( Unicos, Score ).

% Elige el atributo con mayor score
mejor_atributo( Candidatos, Mejor ) :-
        findall(                                                                                           
        Score-Attr,                                                   
        (                                                                                              
            atributo( Attr ),                                             
            score( Attr, Candidatos, Score ) % calcula el score de cada atributo                              
        ),                                                                                             
        Pares                
    ),                                                                                                   
    max_member( _-Mejor, Pares ).

% Si queda uno, lo imprimimos
preguntar( [Unico] ) :-
    nl, write( "¡Es " ), write( Unico ), write( "!" ), nl.

% No existe el personaje
preguntar( [] ) :-
    write( "No encontré ningún personaje con esas características." ), nl.

% Base case, no hay un solo personaje, seguir iterando
preguntar( Candidatos ) :-
    Candidatos = [_,_|_],
    mejor_atributo( Candidatos, Attr ),
    write( "¿Cuál es el valor de " ), write( Attr ), write( "? " ),
    read( Val ),
    filtrar( Attr, Val, Candidatos, Restantes ),
    preguntar( Restantes ).

jugar :-
    todos_los_personajes( Ps ),
    write( "Piensa en un personaje Disney..." ), nl,
    preguntar( Ps ).