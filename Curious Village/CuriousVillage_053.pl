% Professor Layton and the Curious Village
% Puzzle 053
%
% When you weren't looking, someone came by and gobbled up your fish dinner.
% The three brothers near the scene of this dastardly crime had this to say:
% 	A: Me? Oh yeah, I ate it. It was good too!
% 	B: I saw A eat that fish right up!
% 	C: B and I didn't eat that fish.
% One of these three brothers is lying to you, but which one is it?
%
% Solution:
% 	A and C ate the Fish.
% 	B lied.
% 
% INCOMPLETE

% Who is the liar?
said(Person, Statement, Liar) :- (Person = Liar, \+ Statement).
said(Person, Statement, Liar) :- (Person \= Liar, Statement).

solve :-
    % There are 3 brothers.
    People = [a, b, c],
    % Someone ate a fish.
    member(Fish, People),
    % Someone is lying.
    member(Liar, People),
    
    % A said A ate the Fish
    said(a, a = Fish, Liar),
    % B said A ate the Fish
    said(b, a = Fish, Liar),
    % C said B and C did not eat the Fish
    said(c, a = Fish, Liar),
    
    % Present the Fish Eater and the Liar
    write(Fish), write(' ate the fish.'), nl,
    write(Liar), write(' lied.'), nl.