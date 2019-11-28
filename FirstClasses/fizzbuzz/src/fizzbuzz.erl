-module(fizzbuzz).

-export([fizzbuzz/1]).

fizzbuzz(Y) ->
    [fizzbuzz(X, single) || X <- lists:seq(1, Y)].

fizzbuzz(X, single) when X rem 15 == 0 -> fizzbuzz;
fizzbuzz(X, single) when X rem 5 == 0 -> buzz;
fizzbuzz(X, single) when X rem 3 == 0 -> fizz;
fizzbuzz(X, single) -> X.
