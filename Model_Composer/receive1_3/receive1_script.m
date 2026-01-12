clear; clc; close all;

n_channel = 1024;
n_overlapped_channel = 2 * 1024;
parallel_factor = 4;
acc_factor = 4;

acc_length = n_overlapped_channel/parallel_factor * acc_factor - 4

beat_dphi_uint16_0 = csvread('input_files/beat_dphi_uint16_0.csv');
beat_dphi_uint16_1 = csvread('input_files/beat_dphi_uint16_1.csv');
beat_dphi_uint16_2 = csvread('input_files/beat_dphi_uint16_2.csv');
beat_dphi_uint16_3 = csvread('input_files/beat_dphi_uint16_3.csv');

%default bin_map
bin_map = csvread('input_files/bin_map.csv');
% bin_map_test_w is for 850 schedduled freqs
% bin_map_test_w = csvread('input_files/bin_map_test_w.csv'); 

PSB_out_tvalid = csvread('Simulink_output_files/PSB_out_tvalid.csv');
PSB_out_re = csvread('Simulink_output_files/PSB_out_re.csv');
PSB_out_im = csvread('Simulink_output_files/PSB_out_im.csv');

% 10 invalid, 7720 valid, 12270 invalid, OG
% PSB_out_tvalid = [PSB_out_tvalid(1338:1338+7730-1); zeros(12270,1); PSB_out_tvalid];
% PSB_out_re = [PSB_out_re(1338:1338+7730+12270-1, 1:4); PSB_out_re];
% PSB_out_im = [PSB_out_im(1338:1338+7730+12270-1, 1:4); PSB_out_im];

% sim_sec = 128*2048+7729-1 + 20000
% simout = sim('Receive_1.slx', sim_sec);
% writematrix(simout.acc_tvalid_out,'Simulink_output_files/acc_tvalid_out.csv');
% writematrix(simout.accum_snap_I0,'Simulink_output_files/accum_snap_I0.csv');
% writematrix(simout.accum_snap_Q0,'Simulink_output_files/accum_snap_Q0.csv');
% writematrix(simout.accum_snap_I1,'Simulink_output_files/accum_snap_I1.csv');
% writematrix(simout.accum_snap_Q1,'Simulink_output_files/accum_snap_Q1.csv');
% writematrix(simout.accum_snap_I2,'Simulink_output_files/accum_snap_I2.csv');
% writematrix(simout.accum_snap_Q2,'Simulink_output_files/accum_snap_Q2.csv');
% writematrix(simout.accum_snap_I3,'Simulink_output_files/accum_snap_I3.csv');
% writematrix(simout.accum_snap_Q3,'Simulink_output_files/accum_snap_Q3.csv');
% writematrix(simout.acc_tvalid_snap,'Simulink_output_files/acc_tvalid_snap.csv');

disp('Finished');