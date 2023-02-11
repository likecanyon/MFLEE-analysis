clear;close all;clc;
R = linspace(-35,35,100);
P =linspace(-35,35,100);
G=[0;0;7.4];
Flimit=40;
Data=[0,0,0];
for i =1:100
    for j=1 :100
        H=pinv(rpy2r(R(i),P(j),0))*G;
        Data=[Data;R(i),P(j),H(3,1)+27.9];
        %     scatter3(R(i),P(j),H(3,1)+Flimit,'filled');
        %     hold on
    end
end
Data(1,:)=[];
figure(1)
scatter3(Data(:,1),Data(:,2),Data(:,3),10,Data(:,3),'filled','square');
cb = colorbar;
cb.Label.String='Force(N)';
xlabel('Roll(°)');
ylabel('Pitch(°)');
zlabel('Force(N)');
view(0,90)
axis equal;
% figure(2)
% plot3(Data(:,1),Data(:,2),Data(:,3));
% filename = 'testdata.xlsx';
% writematrix(Data,filename,'Sheet',1);
% a=0;
% b=0;
% c=0;
% d=0;
% e=0;
% f=0;
% g=0;
% h=0;
% for k=1:10000
%     
%     if ((Data(k,3)>=43.4)&&(Data(k,3)<43.6))
%         a=a+1;
%     end
%     if ((Data(k,3)>=43.6)&&(Data(k,3)<43.8))
%         b=b+1;
%     end
%     if((Data(k,3)>=43.8)&&(Data(k,3)<44))
%         
%         c=c+1;
%     end
%     
%     if ((Data(k,3)>=44)&&(Data(k,3)<44.2))
%         d=d+1;
%     end
%     if ((Data(k,3)>=44.2)&&(Data(k,3)<44.4))
%         e =e +1;
%     end
%     if ((Data(k,3)>=44.4)&&(Data(k,3)<44.6))
%         f=f+1;
%     end
%     if ((Data(k,3)>=44.6)&&(Data(k,3)<44.8))
%         g=g+1;
%     end
%     if ((Data(k,3)>=44.8)&&(Data(k,3)<45))
%         h=h+1;
%     end
%     
% end
