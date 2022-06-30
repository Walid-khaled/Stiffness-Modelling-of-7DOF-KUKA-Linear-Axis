%% VJM
clear all;
close all;
clc;

%% Initial state
q_0 = [0, 0, 0, 0, 0, 0, 0];
link_lengths = [675, 350, 1150, 1200, -41, 240]*1e-3;

Force = [100, 100, 100, 100, 100, 100]';
deflectionData = zeros(10, 10, 10);
pointsize = 45;
tic
figure()
grid on;
for x = 1:10
    for y = 1:10
        for z = 1:10
            p_ee=[x*0.1 y*0.1 z*0.1 0 0 0]'; 
            q = IK(q_0, link_lengths, p_ee, flag);
            Kc =  VJM(q, link_lengths);
            if rank(Kc)== 6
                dt=inv(Kc)*Force;
                deflection = sqrt(dt(1)^2 + dt(2)^2 + dt(3)^2);
                deflectionData(x, y, z) = deflection;
            end
            scatter3(x*0.1, y*0.1, z*0.1, pointsize, deflectionData(x,y,z), 'filled');
            hold on;

        end
    end
end

xlabel('X-axis') 
ylabel('Y-axis') 
zlabel('Z-axis')
% xlim([0,0.4])
% ylim([0,0.4])
% zlim([0,0.4])
title('VJM deflection due to 100N force in all directions')
L = colorbar;
L.Label.String = 'Deflection Magnitude';
toc