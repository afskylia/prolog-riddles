
fish_owner(Owner) :-
    houses(Hs),
    member(h(Owner,fish,_,_,_),Hs).

% each clue can be illustrated as a house on the form:
% h(Nationality, Pet, Cigar, Drink, Color)
% but the knowledege of each house is incomplete (hence the underscores)
houses(Hs) :-
    length(Hs,5),
    member(h(brit,_,_,_,red), Hs),
    member(h(swede,dogs,_,_,_), Hs),
    member(h(dane,_,_,tea,_), Hs),

    append(_,[h(_,_,_,_,green), h(_,_,_,_,white)|_], Hs),
    %next(h(_,_,_,_,green), h(_,_,_,_,white),Hs),
    %left_of(h(_,_,_,_,green), h(_,_,_,_,white),Hs),

    member(h(_,_,_,coffee,green), Hs),
    member(h(_,birds,pall_mall,_,_), Hs),
    member(h(_,_,dunhill,_,yellow), Hs),
    Hs = [_,_,h(_,_,_,milk,_),_,_],
    Hs = [h(norwegian,_,_,_,_)|_],
    next(h(_,_,blends,_,_), h(_,cats,_,_,_), Hs),
    next(h(_,horses,_,_,_), h(_,_,dunhill,_,_), Hs),
    member(h(_,_,blue_master,beer,_), Hs),
    member(h(german,_,prince,_,_), Hs),
    next(h(norwegian,_,_,_,_), h(_,_,_,_,blue), Hs),
    %next(h(_,_,blends,_,_), h(_,_,_,_,water), Hs),
    member(h(_,fish,_,_,_), Hs).



next(A, B, Ls) :- append(_, [A,B|_], Ls).
next(A, B, Ls) :- append(_, [B,A|_], Ls).

left_of(A,B,[A,B]).
%left_of(A,B,[B,A]) :- fail.

%element occurs
