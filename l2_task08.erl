-module(l2_task08).

-export([compress/1]).

compress(List) ->
  l2_task05:reverse(compress(List, [])).

compress([H, H | T], Acc) ->
  compress([H | T], Acc);
compress([H1, H2 | T], Acc) ->
  compress([H2 | T], [H1 | Acc]);
compress([H], Acc) ->
 [H | Acc].