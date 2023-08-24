-module(l2_task11).

-export([encode_modified/1]).

encode_modified(List) ->
  l2_task05:reverse(encode_modified(List, [])).

encode_modified([], NewList) ->
  NewList;
encode_modified([H | T], NewList) ->
  {T1, Count} = encode_modified(T, H, 1),
  encode_modified(T1, [Count | NewList]).

encode_modified([H | T], H, Count) ->
  encode_modified(T, H, Count + 1);
encode_modified(Acc, H, 1) ->
  {Acc,  H};
encode_modified(Acc, H, Count) ->
  {Acc, {Count, H}}.