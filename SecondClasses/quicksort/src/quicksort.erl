-module(quicksort).

-export([helper/3, sort/1]).

sort([]) -> [];
sort([F | Tail]) ->
    {Left, Right} = helper(Tail, F, {[], []}),
    sort(Left) ++ [F] ++ sort(Right).

helper([], _C, {S, B}) -> {S, B};
helper([Elem | Tail], Comparator, {Smaller, Bigger})
    when Elem =< Comparator ->
    helper(Tail, Comparator, {Smaller ++ [Elem], Bigger});
    
helper([Elem | Tail], Comparator, {Smaller, Bigger})
    when Elem > Comparator ->
    helper(Tail, Comparator, {Smaller, Bigger ++ [Elem]}).
