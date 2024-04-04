-module(exe3).
-export([n_divide/1]).

%Lista todos os divisores de N
n_divide(N) -> % 5
    N1 = N, 
    ver_div([N1, N]). %Diz si é divisivel ou não

ver_div([0, N]) -> % Si n-1 for igual a termina
    fim; 

ver_div([N1, N]) ->
     if 
        (N rem N1) == 0 -> % ve si N % N1 é igual 0
            io:format("~w divide ~w~n", [N1, N]);
        (N rem N1) /= 0 -> % ve si N % N1 é diferente 0
            io:format("~w nao divide ~w~n", [N1, N])
    end,
    ver_div([N1 - 1, N]). % Chama a funcão novamente com N1 - 1