pos_sp0_v0 = readpossp('D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-pos_ctrl_sp.csv');
Rec0_v0 = readRec('D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle0-Recording.csv');
Rec0_markernumber_v0 = readMarkerNum('2018-03-01-12-22-04-vehicle0-marker_number.csv');
Rec0_v1 = readRec('D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle1-Recording.csv');
Rec0_markernumber_v1 = readMarkerNum('2018-03-01-12-22-04-vehicle1-marker_number.csv');
%% convert time format
Rectime = datevec(Rec0_v0.time1);
Rectime = Rectime(:,4:end);
start_time = Rectime(1,:);
end_time = Rectime(end,:);

markernum_time_v0 = datevec(Rec0_markernumber_v0.time);
markernum_time_v0 = markernum_time_v0(:,4:end);

markernum_time_v1 = datevec(Rec0_markernumber_v1.time);
markernum_time_v1 = markernum_time_v1(:,4:end);
time_vicon = diff_time(markernum_time_v1,-1,start_time);
period_vicon = [time_vicon;time_vicon(end,1)] - [time_vicon(1,1);time_vicon];
mean_T_vicon = mean(period_vicon);

%% calculate datadrop rate
isDrop = zeros(size(Rec0_v0.time1,1),1);
timefromstart = diff_time(Rectime,-1,start_time);
period_controller = [timefromstart;timefromstart(end,1)] - [timefromstart(1,1);timefromstart];
mean_T_controller = mean(period_controller);
isDrop = abs(period_controller-0.02)>0.01;
s = sum(isDrop);
%%
% [adjust_starttime,s_indexv1] = min(abs(diff_time(markernum_time_v1,-1,start_time)));
% [adjust_endtime,e_indexv1] = min(abs(diff_time(markernum_time_v1,-1,end_time)));
% markernum_time_v1 = markernum_time_v1(s_indexv1:e_indexv1,:);
% markernum_time_v0 = markernum_time_v0(s_indexv1:e_indexv1,:);

% mean_time = mean(markernum_time(2:end)-markernum_time(1:end-1));

% [adjust_starttime,s_indexv0] = min(abs(diff_time(markernum_time_v0,-1,start_time)));
% [adjust_endtime,e_indexv0] = min(abs(diff_time(markernum_time_v0,-1,end_time)));
% markernum_time_v0 = markernum_time_v0(s_indexv0:e_indexv0,:);

%% plot x direction v0,v1
figure
subplot(2,1,1);
title('vehicle0: direction x')
hold on
plot(Rec0_v0.Rec_posSpx,'color',[0,0.5,0.9],'LineWidth',1.05)
grid minor
plot(Rec0_v0.Rec_posEstx,'color',[0,1.0,0],'LineWidth',1.05)
legend('vehicle0: Setpoint in x','vehicle0: Estimation in x')
subplot(2,1,2); % plot y direction v1
title('vehicle1: direction x')
grid minor
hold on
plot(Rec0_v1.Rec_posSpx,'color',[0,0.5,0.9],'LineWidth',1.05)
plot(Rec0_v1.Rec_posEstx,'color',[1,0,0],'LineWidth',1.05)
legend('vehicle1: Setpoint in x','vehicle0: Estimation in x')
%%
% %% plot x direction v0
% figure
% title('vehicle0: direction x')
% grid on
% hold on
% plot(Rec0_v0.Rec_posSpx,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v0.Rec_posEstx,'color',[0,1.0,0],'LineWidth',1.05)
% legend('vehicle0: Setpoint in x','vehicle0: Estimation in x')
% 
% %% plot x direction v1
% figure
% title('vehicle1: direction x')
% grid on
% hold on
% plot(Rec0_v1.Rec_posSpx,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v1.Rec_posEstx,'color',[1,0,0],'LineWidth',1.05)
% legend('vehicle1: Setpoint in x','vehicle0: Estimation in x')

%% plot y direction v0,v1
figure
subplot(2,1,1);
title('vehicle0: direction y')
hold on
plot(Rec0_v0.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
grid minor
plot(Rec0_v0.Rec_posEsty,'color',[0,1.0,0],'LineWidth',1.05)
legend('vehicle0: Setpoint in y','vehicle0: Estimation in y')
subplot(2,1,2); % plot y direction v1
title('vehicle1: direction y')
grid minor
hold on
plot(Rec0_v1.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
plot(Rec0_v1.Rec_posEsty,'color',[1,0,0],'LineWidth',1.05)
legend('vehicle1: Setpoint in y','vehicle0: Estimation in y')

%% plot y direction v0,v1
figure
subplot(2,1,1);
title('vehicle0: direction z')
hold on
plot(Rec0_v0.Rec_posSpz,'color',[0,0.5,0.9],'LineWidth',1.05)
grid minor
plot(Rec0_v0.Rec_posEstz,'color',[0,1.0,0],'LineWidth',1.05)
legend('vehicle0: Setpoint in z','vehicle0: Estimation in z')
subplot(2,1,2); % plot y direction v1
title('vehicle1: direction z')
grid minor
hold on
plot(Rec0_v1.Rec_posSpz,'color',[0,0.5,0.9],'LineWidth',1.05)
plot(Rec0_v1.Rec_posEstz,'color',[1,0,0],'LineWidth',1.05)
legend('vehicle1: Setpoint in z','vehicle0: Estimation in z')

%% plot z direction v0
% figure
% title('vehicle0: direction z')
% grid on
% hold on
% plot(Rec0_v0.Rec_posSpz,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v0.Rec_posEstz,'color',[0,1.0,0],'LineWidth',1.05)
% 
% legend('vehicle0: Setpoint in z','vehicle0: Estimation in z')
% 
% %% plot z direction v1
% figure
% title('vehicle1: direction z')
% grid on
% hold on
% plot(Rec0_v1.Rec_posSpz,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v1.Rec_posEstz,'color',[1,0,0],'LineWidth',1.05)
% 
% legend('vehicle1: Setpoint in z','vehicle1: Estimation in z')

%% plot marker number v0,v1
figure
subplot(2,1,1);
title('vehicle0: marker number detected')
hold on
grid minor
plot(Rec0_markernumber_v0.vicon_marker_number,'color',[0,1.0,0],'LineWidth',1.05)
axis([-inf,inf,0,4.5,]);
subplot(2,1,2); % plot y direction v1
title('vehicle1: marker number detected')
grid minor
hold on
plot(Rec0_markernumber_v1.vicon_marker_number,'color',[1,0,0],'LineWidth',1.05)
axis([-inf,inf,0,4.5,]);

%% marker number v0
% figure
% title('vehicle0: marker number detected')
% grid on
% hold on 
% plot(Rec0_markernumber_v0.vicon_marker_number,'color',[0,1.0,0],'LineWidth',1.05)
% axis([-inf,inf,0,4.5,]);
% %% marker number v1
% figure
% title('vehicle1: marker number detected')
% grid on
% hold on 
% plot(Rec0_markernumber_v1.vicon_marker_number,'color',[1,0,0],'LineWidth',1.05)
% axis([-inf,inf,0,4.5,]);

%% plot x-y plant v0 v1
figure
subplot(2,1,1);
title('vehicle0: x-y plant')
hold on
grid minor
plot(Rec0_v0.Rec_posSpx,Rec0_v0.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
plot(Rec0_v0.Rec_posEstx,Rec0_v0.Rec_posEsty,'color',[0,1.0,0],'LineWidth',1.05)
axis([-1,1,-1,1]);
legend('vehicle0: Setpoint X-Y','vehicle0: Estimation X-Y')
subplot(2,1,2); % plot y direction v1
title('vehicle1: x-y plant')
grid minor
hold on
plot(Rec0_v1.Rec_posSpx,Rec0_v1.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
plot(Rec0_v1.Rec_posEstx,Rec0_v1.Rec_posEsty,'color',[1,0,0],'LineWidth',1.05)
axis([-1,1,-1,1]);
legend('vehicle1: Setpoint X-Y','vehicle1: Estimation X-Y')

%% plot x-y plant v0
% figure
% title('vehicle0: x-y plant')
% grid on
% hold on 
% plot(Rec0_v0.Rec_posSpx,Rec0_v0.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v0.Rec_posEstx,Rec0_v0.Rec_posEsty,'color',[0,1.0,0],'LineWidth',1.05)
% legend('vehicle0: Setpoint X-Y','vehicle0: Estimation X-Y')
% 
% 
% %% plot x-y plant v1
% figure
% title('vehicle1: x-y plant')
% grid on
% hold on 
% plot(Rec0_v1.Rec_posSpx,Rec0_v1.Rec_posSpy,'color',[0,0.5,0.9],'LineWidth',1.05)
% plot(Rec0_v1.Rec_posEstx,Rec0_v1.Rec_posEsty,'color',[1,0,0],'LineWidth',1.05)
% legend('vehicle1: Setpoint X-Y','vehicle1: Estimation X-Y')

%%
% figure
% grid on
% hold on
% myycomet3(Rec0_v0.Rec_posEstx,Rec0_v0.Rec_posEsty,Rec0_v0.Rec_posEstz,0.8)

% Rec0_possp = readpossp('D:\YU\SJTU17-19\Labo\swarm\bag_history\csv_bag\2018-03-01-12-22-04-vehicle1-pos_ctrl_sp.csv');
%%
% plot(Rec0_possp.pos_spy)