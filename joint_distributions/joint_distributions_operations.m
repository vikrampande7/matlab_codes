% Mean of Random Vector
X = randn(100,2);
mX = mean(X,2);
covX = cov(X);

% 2D Visualisation Overlay of Random Numbers with Gaussian Cotntour
x  = mvnrnd([0 0],[.25 .3; .3 1],1000);
x1 = -2.5:.01:2.5;
x2 = -3.5:.01:3.5;
[X1,X2] = meshgrid(x1,x2);
F = mvnpdf([X1(:) X2(:)],[0 0],[.25 .3; .3 1]);
F = reshape(F,length(x2),length(x1));

figure(1);
scatter(x(:,1),x(:,2),'rx', 'LineWidth', 1.5); hold on;
contour(x1,x2,F,[.001 .01 .05:.1:.95 .99 .999], 'LineWidth', 2);


% Transformation of Multidimensional Gaussian
g     = mvnrnd([0,0],[1 0; 0 1],1000);
Sigma = [3 -0.5; -0.5 1];
mu    = [1; -2];
y     = Sigma^(0.5)*g' + mu;

% Principal Component Analysis
p = mvnrnd([0,0],[2 -1.9; -1.9 2],1000);
covP = cov(p);
[U,S] = eig(covP);
U(:,1) % Principle components
U(:,2) % Principle components