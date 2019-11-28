-module(fibonacci_sum).

-export([fibonacci_sum/0, fibonacci_sum/4]).

fibonacci_sum() ->
    Limit = 4 * 1000 * 1000, fibonacci_sum(1, 1, 0, Limit).

fibonacci_sum(Prev, Curr, Sum, Limit) ->
    case Curr of
      N when N < Limit andalso N rem 2 == 0 ->
      fibonacci_sum(Curr, Prev + Curr, Sum + Curr, Limit);
      N when N < Limit andalso N rem 2 == 1 ->
	  fibonacci_sum(Curr, Prev + Curr, Sum, Limit);
      Else -> 
          Sum
    end.
