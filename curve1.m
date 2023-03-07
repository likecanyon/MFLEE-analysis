subplot(1,4,1);
fplot(@(x) 3.9-sqrt(3.9^2-(2.5-x)^2),[0,2.5],'k','LineWidth',1,'color','#0072BD');
% R-sqrt(R^2-(w-x)^2),[0,2.5],'k','LineWidth',1,'color','#0072BD');
grid on ;
title('delta-s');
ylabel('小球竖向位移delta(mm)');
xlabel('(a) 小球横向位移(mm)');

subplot(1,4,2);
fplot(@(x) acos((2.5-x)/3.9),[0,2.5],'k','LineWidth',1,'color','#0072BD')
% acos((w-x)/R),[0,2.5],'k','LineWidth',1,'color','#0072BD')
grid on
title('theta-s');
xlabel('(b) 小球横向位移(mm)');
ylabel('力角(rad)');

subplot(1,4,3);
fplot(@(x) 9.811*(3.9-sqrt(3.9^2-2.5^2)-(3.9-sqrt(3.9^2-(2.5-x)^2)))+29.433,[0,2.5],'k','LineWidth',1,'color','#0072BD')
% k*(R-sqrt(R^2-w^2)-(R-sqrt(R^2-(w-x)^2)))+P0,[0,2.5],'k','LineWidth',1,'color','#0072BD')
grid on 
title('Fv-s');
xlabel('(c) 小球横向位移(mm)');
ylabel('竖直方向的力Fv(N)');

subplot(1,4,4);
fplot(@(x) (9.811*(3.9-sqrt(3.9^2-2.5^2)-(3.9-sqrt(3.9^2-(2.5-x)^2)))+29.433)/tan(acos((2.5-x)/3.9)),[0,2.5],'k','LineWidth',1,'color','#0072BD')
% (k*(R-sqrt(R^2-w^2)-(R-sqrt(R^2-(w-x)^2)))+P0)/tan(acos((w-x)/R)),[0,2.5],'k','LineWidth',1,'color','#0072BD')
grid on 
title('Fs-s');
xlabel('(d)小球横向位移(mm)');
ylabel('横向力Fs(N)');