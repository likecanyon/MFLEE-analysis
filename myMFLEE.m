subplot(1,4,1);
fplot(@(x) 1.5-sqrt(1.5^2-(1.0-x)^2),[0,1.0],'k','LineWidth',1,'color','#4DBEEE');
grid on ;
% title('delta-s');
ylabel('Displacement of the ball(mm)');
xlabel('(a)Relative movement(mm)');

subplot(1,4,2);
fplot(@(x) acos((1.0-x)/1.5),[0,1.0],'k','LineWidth',1,'color','#4DBEEE')
grid on
% title('theta-s');
xlabel('(b)Relative movement(mm)');
ylabel('Reaction of the force angle(rad)');

subplot(1,4,3);
fplot(@(x) 14.5*(1.5-sqrt(1.5^2-1.0^2)-(1.5-sqrt(1.5^2-(1.0-x)^2)))+7.8,[0,1.0],'k','LineWidth',1,'color','#4DBEEE')
grid on 
% title('Fv-s');
xlabel('(c)Relative movement(mm)');
ylabel('Vertical force(N)');

subplot(1,4,4);
fplot(@(x) (14.5*(1.5-sqrt(1.5^2-1.0^2)-(1.5-sqrt(1.5^2-(1.0-x)^2)))+7.8)/tan(acos((1.0-x)/1.5)),[0,1.0],'k','LineWidth',1,'color','#4DBEEE')
grid on 
% title('Slide force(N)');
xlabel('(d) Relative movement(mm)');
ylabel('Slide force(N)');