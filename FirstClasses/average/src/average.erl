-module(average).

-export([average/1]).

average([]) -> 0;
average(List) ->
    lists:foldl(fun(X, Acc) -> X + Acc end, 0, List)/length(List).

average2([]) -> 0;
average2(L) -> 
    Sum = sum(L),
    Length = length(L),
    Sum/Length.

sum([]) -> 0;
sum([H|T]) ->
    H + sum(T).
