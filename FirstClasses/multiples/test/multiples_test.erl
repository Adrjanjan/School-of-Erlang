-module(multiples_test).

-include_lib("eunit/include/eunit.hrl").

thousand_sum_test() ->
    ?assertEqual(234168, multiples:thousand_sum()).
