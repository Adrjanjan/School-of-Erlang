-module(sum_three).

-export([add_three/3]).

add_three(A, B, C) when is_number(A) andalso is_number(B) andalso is_number(C) ->
    A + B + C.