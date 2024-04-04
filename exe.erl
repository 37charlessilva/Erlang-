-module(exe).
-export([f_nomes/1]).

f_nomes([]) ->
    fim;

f_nomes([Pessoas | H]) -> %Recebi uma lista com listas
    maior_idade(Pessoas), %Chama o maior idade com a primeira lista da lista
    f_nomes(H). %Printa o nome e si é maior ou menor de idade

maior_idade(List) ->
    [P, I] = List, %Nome E Idade
    if 
        I >= 18 ->
            print({ma, P}); % Devolve si é maior de idade
        I < 18 ->
            print({me, P})  % Devolve si é menor de idade
    end.

print({me, P}) ->
    io:format("~w e menor de idade.~n", [P]); %Printa

print({ma, P}) ->
    io:format("~w e maior de idade.~n", [P]). %Printa