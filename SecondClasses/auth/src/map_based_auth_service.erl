-module(map_based_auth_service).
-behavior(auth_service_behavior).

-type login() :: string().
-type password() :: string().
-type state() :: {login(), password()}.

-export([
        add_user/3,
        del_user/2,
        user_exists/2,
        auth_user/3
    ]).

-spec add_user(login(), password(), state()) -> state().
-spec del_user(login(), state()) -> state().
-spec user_exists(login(), state()) -> boolean().
-spec auth_user(login(), password(), state()) -> boolean().

add_user(Login, Password, State) -> 
    State#{Login => Password}.

del_user(Login, State) -> 
    maps:remove(Login, State).

user_exists(Login, State) -> 
    case maps:find(Login, State) of 
        {ok, _} -> true;
        error -> false
    end. 

auth_user(Login, Password, State) -> 
    case maps:find(Login, State) of 
        {ok, P} -> Password =:= P;
        error -> false
    end.