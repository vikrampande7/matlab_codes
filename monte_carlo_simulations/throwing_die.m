% Program to run the simulation to see the probability of getting 1 on a die

% Create set of 6 values.

% Setting up the theoretical probability p = 0.016

number_of_runs = 100000;
% Array of 100,000 zeros (used later)
allOnes = zeros(1,number_of_runs);

for n = 1:number_of_runs
    set = randperm(6);
    % Face is 1
    num_of_faces = 1;
    draw = set(1:num_of_faces);
    % Count how many are ones
    count  = 0;
    for i = 1:num_of_faces
        if draw(i) == 1
            count = count+1;
        end
    end
    % Check if the face was 1
    % A one represent that all the faces were ones
    % A zero otherwise
    if count == num_of_faces
        allOnes(n) = 1;
    else
        allOnes(n) = 0;
    end
end
% Add up all the times with face 1
S = sum(allOnes);
% Calculate estimated probabilty of face 1
P = S/number_of_runs;