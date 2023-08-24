-module(l2_task01).

%% API
-export([last/1]).

last([H]) ->
  H;
last([_ | T]) ->
  last(T).