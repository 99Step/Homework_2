-module(l2_task10).

-export([encode/1]).

encode(List) ->
  l2_task05:reverse(encode(List, [])).

encode([], NewList) ->
  NewList;
encode([H | T], NewList) ->
  {T1, Count} = encode(T, H, 1),
  encode(T1, [Count | NewList]).

encode([H | T], H, Count) ->
  encode(T, H, Count + 1);
encode(List, H, Count) ->
  {List, {Count, H}}.