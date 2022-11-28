% MATLAB: Visualize the Maximum likelihood function
N = 50;
S = 1:N;
theta = linspace(0.1,0.9,100);
[S_grid, theta_grid] = meshgrid(S, theta);
L = S_grid.*log(theta_grid) + (N-S_grid).*log(1-theta_grid);
s = surf(S,theta,L);
s.LineStyle = '-';
colormap jet
view(65,15)
set(gcf, 'Position', [100, 100, 800, 800]);
set(gca,'FontWeight','bold','fontsize',14);

figure;
N = 50;
S = 1:0.1:N;
theta = linspace(0.1,0.9,1000);
[S_grid, theta_grid] = meshgrid(S, theta);
L = S_grid.*log(theta_grid) + (N-S_grid).*log(1-theta_grid);
imagesc(S,theta,L);
set(gcf, 'Position', [100, 100, 800, 800]);
set(gca,'FontWeight','bold','fontsize',14);
colormap jet
% saveas(gca,'mle.jpg', 'jpg')
Image = getframe(gcf);
imwrite(Image.cdata, 'mle.jpg');