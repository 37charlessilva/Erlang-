-module(exe2).
-export([convert_length/1]).

convert_length({metros, X}) -> %Metros para centimentros
    {centimetro, X * 100}; 

convert_length({centimetros, Y}) -> %centimentros para metros
    {metros, Y / 100}. 