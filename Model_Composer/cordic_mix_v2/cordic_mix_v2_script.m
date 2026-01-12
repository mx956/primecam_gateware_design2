clear; clc; close all;

dphi = 4096;  % 1MHz = 4096; 0.5MHz = 2048; 0.125 MHz = 512
sim_sec = 2 * 1024*256 + 30 - 1

PSB_out_tvalid = csvread('Simulink_output_files/PSB_out_tvalid.csv');
PSB_out_re = csvread('Simulink_output_files/PSB_out_re.csv');
PSB_out_im = csvread('Simulink_output_files/PSB_out_im.csv');

PSB_out_tvalid_trimmed = PSB_out_tvalid(1348+(16-1)*256:end, :);
PSB_out_re_trimmed = PSB_out_re(1348+(16-1)*256:end, :);
PSB_out_im_trimmed = PSB_out_im(1348+(16-1)*256:end, :);

cordic_test_signal_real = csvread('input_files/mixV2_in_real.csv');
cordic_test_signal_imag = csvread('input_files/mixV2_in_imag.csv');

sim('cordic_mix_v2.slx', sim_sec);

writematrix(out_tvalid,'Simulink_output_files/mixV2_out_tvalid.csv');
writematrix(out_real,'Simulink_output_files/mixV2_out_real_test_1M.csv');
writematrix(out_imag,'Simulink_output_files/mixV2_out_imag_test_1M.csv');

disp('Finished');