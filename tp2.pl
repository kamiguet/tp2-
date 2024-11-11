% 1.
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% 2.
first(E, [E|_]).

% 3.
last(E, [E]).
last(E, [_|T]) :- last(E, T).

% 4.
penultimate(E, [E, _]).
penultimate(E, [_|T]) :- penultimate(E, T).

% 5.
del_k(X, [X|T], 1, T).
del_k(X, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, T, K1, R).

% 6.
length([], 0).
length([_|T], N) :-
    length(T, N1),
    N is N1 + 1.

% 7.
even(L) :-
    length(L, N),
    0 is N mod 2.

% 8.
concat([], L2, L2).
concat([H|T], L2, [H|R]) :-
    concat(T, L2, R).

% 9.
palindrome(L) :- reverse(L, L).




