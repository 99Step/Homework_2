-module(l2_task15).

-export([replicate/2]).

replicate(List, Count) ->
  Res = replicate(List, Count, []),
  l2_task07:flatten(l2_task05:reverse(Res)).

replicate([], _, NewList) ->
  NewList;
replicate([H | T], Count, NewList) ->
  Res = add(H, Count - 1, [H]),
  replicate(T, Count, [Res | NewList]).

add(_, 0, Acc) ->
  Acc;
add(H, Count, Acc) ->
  add(H, Count - 1, [H | Acc]).