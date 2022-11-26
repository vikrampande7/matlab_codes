% Compute the Expectations of a dataset

% E[X] where X is Uniform[0,1]

% Mean
X  = rand(10000,1);
mX = mean(X);

% Mean from PMF
p = [0.25 0.5 0.25];
x = [0 1 2];
EX = sum(p.*x);

% Expectation of Geometric RV
% px(k) = 1/2^k
kg = 1:100;
pg = 0.5.^kg;
EXg = sum(pg.*kg);