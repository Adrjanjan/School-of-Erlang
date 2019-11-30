-module(rev_polish_notation).

-export([evaluate/1, rpn/2]).

evaluate(List) ->
    [X] = lists:foldl(fun rpn/2, [], List), X.

rpn(A, Acc) when is_integer(A) orelse is_float(A) ->
    [A | Acc];

rpn(Fun, Stack) when is_function(Fun) ->
    case erlang:fun_info(Fun, arity) of
      {arity, 1} -> 
          [A|Tail] = Stack,
          [Fun(A)] ++ Tail;
      {arity, 2} -> 
          [A | Tmp] = Stack,
          [B | Tail] = Tmp,
          [Fun(B, A)] ++ Tail
    end.