% Program to run the simulation of taking out 4 random cards from a deck of
% 52 cards. To find the probability of being dealt all spades?

% Create deck of 52 cards from which 13 will be spades.

% Setting up the theoretical probability p = 0.049

number_of_runs = 100000;
% Array of 100,000 zeros (used later)
allHearts = zeros(1,number_of_runs);

for n = 1:number_of_runs
    deck = randperm(52);
    % Draw the top 13 cards
    num_of_cards_drawn = 5;
    draw = deck(1:num_of_cards_drawn);
    % Count how many are hearts
    count  = 0;
    for i = 1:num_of_cards_drawn
        if draw(i) <= 13
            count = count+1;
        end
    end
    % Check if all the cards drawn were hearts
    % A one represent that all the cards drawn in this run were hearts
    % A zero represents that NOT all the cards drawn were hearts
    if count == num_of_cards_drawn
        allHearts(n) = 1;
    else
        allHearts(n) = 0;
    end
end
% Add up all the times a hand of all hearts was drawn
S = sum(allHearts);
% Calculate estimated probabilty of drawing these hearts
P = S/number_of_runs;