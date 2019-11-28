-module(multiples).
-export([thousand_sum/0]).

thousand_sum() -> 
    math:sum(lists:filter(fun(Elem) -> Elem rem 3 == 0 orelse Elem rem 5 == 0, lists:seq(1, 1000))).
