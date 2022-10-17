
dog(rottweiler).
animal(A):-dog(A). /* if A is an animal, then A is a dog */



indian(curry).
mild(curry).
likes(sam,Food) :- indian(Food), mild(Food). /* Sam likes food if food is indian and mild */



% find last element of a list
my_last(X,[X]).
my_last(X,[_|L]) :- my_last(X,L).