% =========================
% ФАКТИ: Стать
% =========================

male(petro).
female(olena).

male(ivan).
female(maria).

female(nataliia).
male(oleksii).

male(andrii).
female(marta).
male(danylo).

% =========================
% ФАКТИ: Батьківство
% =========================

% Петро і Олена — батьки Івана та Марії
parent(petro, ivan).
parent(olena, ivan).
parent(petro, maria).
parent(olena, maria).

% Іван і Наталія — батьки Андрія та Марти
parent(ivan, andrii).
parent(nataliia, andrii).
parent(ivan, marta).
parent(nataliia, marta).

% Марія і Олексій — батьки Данила
parent(maria, danylo).
parent(oleksii, danylo).

% =========================
% ФАКТИ: Шлюб
% =========================

married(petro, olena).
married(ivan, nataliia).
married(maria, oleksii).

% =========================
% ПРАВИЛА
% =========================

% Дідусь/бабуся
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

% Брати/сестри
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.