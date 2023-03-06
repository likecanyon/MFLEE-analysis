
fplot(@(x) (9.811*(3.9-sqrt(3.9^2-2.5^2)-(3.9-sqrt(3.9^2-(2.5-x)^2)))+2.433)/tan(acos((2.5-x)/3.9)),[0,2.5],'k','LineWidth',1,'color','#0072BD')
grid off 
% title('A小于');
ylim([0,4])
% xlabel('(d)小球横向位移(mm)');
% ylabel('横向力Fs(N)');
set(gca,'xticklabel',[],'xtick',[])
set(gca,'yticklabel',[],'ytick',[])

% fplot(@(x) (9.811*(3.9-sqrt(3.9^2-2.5^2)-(3.9-sqrt(3.9^2-(2.5-x)^2)))+29.433)/tan(acos((2.5-x)/3.9)),[0,2.5],'k','LineWidth',1,'color','#0072BD')
% grid off 
% title('Fs-s');
% xlabel('(d)小球横向位移(mm)');
% ylabel('横向力Fs(N)');
% set(gca,'xticklabel',[],'xtick',[])
% set(gca,'yticklabel',[],'ytick',[])
% ylim([0,28])