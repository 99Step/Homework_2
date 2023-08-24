-module(l2_task12).

-export([decode_modified/1]).

decode_modified(List) ->
  Res = l2_task05:reverse(decode_modified(List, [])),
  l2_task07:flatten(Res).

decode_modified([], NewList) ->
  NewList;
decode_modified([{Count, H} | T], NewList) ->
  NewNewList = decode_modified(H, Count, []),
  decode_modified(T, [NewNewList | NewList]);
decode_modified([H | T], NewList) ->
  decode_modified(T, [H | NewList]).

decode_modified(_, 0, Acc) ->
  Acc;
decode_modified(H, Count, Acc) ->
  decode_modified(H, Count - 1, [H | Acc]).