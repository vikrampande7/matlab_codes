% GAUSSIAN RANDOM VARIABLE
% PDF AND CDF of GRV
% X ~ N(mean, variance) - Normal Distribution with mean 0 and variance 1

% Test - Creating a Gaussian RV
z = randn(1,1e6);

%Transforming GRV
x = 2*z + 1;

%Mean and Variance of Transformed GRV
mean(x)
var(x)

%% Input Configurationns
% N - Number of samples
% x - row vector of equally spaced numbers
% Defininf mean ux and variance sigx
N = 1e6;
x = -10:0.01:10;
ux = 1;
sigx = 2; % variance = 4

% Plotting
FONTSIZE_LABEL = 12;
FONTSIZE_LEGEND = 10;

%% Main Snippet
% Definning PDF of NORMAL Distribution
f = @(x) 1/(sigx * sqrt(2*pi)) * exp(-(x - ux).^2/(2 * sigx^2));

% Defining CDF of NORMAL Distribution
F = @(x) - qfunc((x-ux)/sigx);

% Generating Random Vector with Mean 0 and Variance 1
V = randn(1,N);

% Transforming with Predefined Means and Variances
X = sigx * V + ux;

%% Plotting the PDF
figure(1); subplot(1,2,1);

% Plotting Histogram of generated RV with 200 as number of bins
histogram(X,200,'Normalization','PDF');
hold on;

% Plotting Theoretical PDF
plot(x,f(x),'r-','Linewidth',3);

legend('Simulated','Theoretical','Fontsize', FONTSIZE_LEGEND, 'Location','northeast');

xlabel('x','FontSize',FONTSIZE_LABEL);
ylabel('f_X(x)','FontSize',FONTSIZE_LABEL);
title('PDF of $\mathcal{N}(1,4)$.','Interpreter','latex');

grid on; axis tight; grid minor; hold off;


% Plotting Theoretical CDF
plot(x,F(x),'r-','Linewidth',3);

legend('Simulated','Theoretical','Fontsize', FONTSIZE_LEGEND, 'Location','northeast');

xlabel('x','FontSize',FONTSIZE_LABEL);
ylabel('F_X(x)','FontSize',FONTSIZE_LABEL);
title('PDF of $\mathcal{N}(1,4)$.','Interpreter','latex');

grid on; axis tight; grid minor; hold off;






