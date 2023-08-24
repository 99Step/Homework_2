-module(l2_task07).

-export([flatten/1]).

flatten(List) ->
  Result = flatten(List, []),
  l2_task05:reverse(Result).

flatten([], Acc) ->
  Acc;
flatten([[] | T], Acc) ->
  flatten(T, Acc);
flatten([H | T], Acc) ->
  Acc1 = flatten(H, Acc),
  flatten(T, Acc1);
flatten(H, Acc) ->
  [H | Acc].