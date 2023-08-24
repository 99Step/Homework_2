
-module(l2_task03).


%% API
-export([element_at/2]).

element_at([H | _], 1) ->
  H;
element_at([], _) ->
  undefined;
element_at([_ | T], Count) ->
  element_at(T, Count - 1).