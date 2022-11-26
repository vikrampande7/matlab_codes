% Plotting Distributions
% Poisson
x = 0:25;
y = poisspdf(x,4);

figure
bar(x,y,1)
xlabel('observation')
ylabel('Probability')
