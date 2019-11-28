-module(intro_ex1).

-export([hello_name/1, hello/2]).

hello_name(Name) ->
    io:fwrite("Hello ~s!\n", [Name]).

hello(Name, Surname) ->
    io:fwrite("Hello ~s ~s!\n", [Name, Surname]).
