-module(l2_task13).

-export([decode/1]).

decode(List) ->
  Res = l2_task05:reverse(decode(List, [])),
  l2_task07:flatten(Res).

decode([], NewList) ->
  NewList;
decode([{Count, H} | T], NewList) ->
  NewNewList = decode(H, Count, []),
  decode(T, [NewNewList | NewList]).

decode(_, 0, Acc) ->
  Acc;
decode(H, Count, Acc) ->
  decode(H, Count - 1, [H | Acc]).