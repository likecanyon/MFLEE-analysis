fplot(@(x) (14.5*(1.5-sqrt(1.5^2-1^2)-(1.5-sqrt(1.5^2-(1-x)^2)))+7.8)/tan(acos((1-x)/1.5)),[0,1],'k')
grid on
set(gca,'XGrid','off')
% set(gca,'ytick',[])
% (k*(R-sqrt(R^2-w^2)-(R-sqrt(R^2-(w-x)^2)))+P0)/tan(acos((w-x)/R)),[0,1],'k')