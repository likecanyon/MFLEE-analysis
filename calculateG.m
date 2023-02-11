clear;close all;clc;
R = linspace(-5,70,5);
P =linspace(-20,40,5);
Y= linspace (-35,35,5);
G=[0;0;-5];
Data=[0,0,0];
for i =1:5
    for j=1:5
        for k =1:5
            Data=[Data;R(i),P(j),Y(k)];
        end
    end
end
Data(1,:)=[];
k=zeros(125,1);
datas=[Data,k];
H=[0;0;0];
for m=1:125
H=[H,pinv(rpy2r(Data(m,1),Data(m,2),Data(m,3),'deg'))*G];
end


