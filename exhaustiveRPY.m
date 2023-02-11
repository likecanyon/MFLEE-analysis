clear;close all;clc;
R = linspace(-35,35,25);
P =linspace(-35,35,25);
Y= linspace (-180,180,25);
G=[0;0;7.4];
Flimit=27.9;
for i =1:25
    for j=1 :25
        for k =1:25
               H=pinv(rpy2r(R(i),P(j),Y(k)))*G;
            scatter3(R(i),P(j),Y(k),12,H(3,1)+Flimit,'filled');
            hold on
        end
    end
end
xlim=([-180 180]);
ylim=([-180 180]);
zlim=([-180 180]);
xlabel('Roll(°)');
ylabel('Pitch(°)');
zlabel('Yaw(°)');

cb = colorbar;
cb.Label.String = 'ForceLimit(N)';
