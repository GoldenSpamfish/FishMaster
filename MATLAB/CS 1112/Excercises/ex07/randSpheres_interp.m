function randSpheres_interp (N,r,axisLims,colr1,colr2)
cla % Clear axes (i.e., remove all drawn objects)
close all
figure
axis equal manual % Axes have equal scaling and are frozen at current scale
dimension=axisLims(2)-axisLims(1);
axis([0 dimension 0 dimension]) % Set axes limits: x-axis ranges from 0 to w; y-axis ranges from 0 to h
set(gca, 'xtick', []) % No x-axis tickmarks
set(gca, 'ytick', []) % No y-axis tickmarks
box on % Draw border
hold on % Subsequent plot/fill commands appear on current axes
for i=1:N
xpos=rand()*(dimension-2*r)+r;
ypos=rand()*(dimension-2*r)+r;
centerDist=sqrt((xpos-dimension/2)^2 + (ypos-dimension/2)^2);
colr=colr1+(colr2-colr1)*(centerDist/dimension);

DrawDisk(xpos,ypos,r,colr)

end