-module(rev_polish_notation_test).

-include_lib("eunit/include/eunit.hrl").

evaluator_positive_test() ->
    ?assertEqual(7, rev_polish_notation:evaluate([ 3, 4, fun erlang:'+'/2 ])),
    ?assertEqual(-1, rev_polish_notation:evaluate([ 1, fun erlang:'-'/1 ])),
    ?assertEqual(-17, rev_polish_notation:evaluate([ 3, 4, 5, fun erlang:'*'/2, fun erlang:'-'/2 ])),
    ?assertEqual(-5, rev_polish_notation:evaluate([ 3, 4, fun erlang:'-'/2, 5, fun erlang:'*'/2 ])),
    ?assertEqual(5.0, rev_polish_notation:evaluate([ 15,7, 1, 1, fun erlang:'+'/2, fun erlang:'-'/2, fun erlang:'/'/2, 3, fun erlang:'*'/2, 2, 1, 1,fun erlang:'+'/2, fun erlang:'+'/2, fun erlang:'-'/2])),
    ?assertEqual(0, rev_polish_notation:evaluate([ 1, 2, 3, fun erlang:'+'/2, 4,fun erlang:'-'/2, fun erlang:'-'/2])).

evaluator_negative_test() ->
    ?assertEqual(1, 1).