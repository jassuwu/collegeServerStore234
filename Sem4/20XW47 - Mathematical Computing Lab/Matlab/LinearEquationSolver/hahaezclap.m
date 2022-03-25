x = 1:1:10; 
y = [2 5 6 7 8 10 13 15 18 19];
ln = plot(x,y,':')
xlim([0 10])
ylim([0 20])
ln.LineWidth = 2;
ln.Color = [1 0 0];
ln.Marker = 'o';
ln.MarkerEdgeColor = 'g';
ln.MarkerSize = 12;
ln.MarkerFaceColor = 'y';