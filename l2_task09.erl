-module(l2_task09).

-export([pack/1]).

pack(List)->
  l2_task05:reverse(pack(List, [])).

pack([], NewList) ->
  NewList;
pack([H | T], NewList) ->
  {T1, List} = pack(T, H, [H]),
  pack(T1, [List | NewList]).

pack([H | T], H, Acc) ->
  pack(T, H, [H | Acc]);
pack(List, _, Acc) ->
  {List, Acc}.