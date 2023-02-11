clc;
close all;
% num=readtable('MFLEE实验数据\力测量实验\1.xls','Range','C3:C115','ReadVariableNames',false);
% num=readvars('MFLEE实验数据\力测量实验\2.xls','Range','C3:C115');

Untitled2(1,1)
Untitled2(:,1)=erase(Untitled2(:,1),'N');
num=zeros(55,1);
for i=0:1:54
   num(55-i,1)=str2double(Untitled2(i+1,1));
end
plot(num(10:38,1));
% grid on
xlim([1 29])
ylim([0 40])
xlabel('Number of sampled force data')
ylabel('Force(N)')