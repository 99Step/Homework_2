-module(l2_task14).

-export([duplicate/1]).

duplicate(List) ->
  l2_task05:reverse(duplicate(List, [])).

duplicate([H], NewList) ->
 [H | [H | NewList]];
duplicate([H | T], NewList) ->
 duplicate(T, [H | [H | NewList]]).