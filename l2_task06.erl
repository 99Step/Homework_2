-module(l2_task06).

-export([palindrom/1]).

palindrom(List) ->
  List == l2_task05:reverse(List).