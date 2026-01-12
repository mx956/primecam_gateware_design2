% Design with Overflow Management and Parallel by 4
clear; clc; close all;

n_channel = 1024;
n_overlapped_channel = 2 * 1024;
n_taps = 16;
n_baseband_samples = n_taps - 1 + 1024  % 1087, 20
parallel_factor = 4;

delay_dp = 1 + 24
delay_ToneSelect = 10 + 256;
delay_iFFT = 799 + 1  % Delay varies with different SSR!!!!!!
delay_buffering = 4+1024/parallel_factor+1 - 2
delay_FIR = 2 + 5 + n_channel/parallel_factor  % FIR_RAM delay changed from 1 to 2 since PSB0_2
% Vivado sim sec needs to be here + 2
% sim_sec = 1024^2 + n_channel*n_baseband_samples + delay_dp+delay_iFFT+delay_FIR - 1 ...
%           + 3000
sim_sec = n_channel/parallel_factor * n_baseband_samples + delay_dp + delay_ToneSelect + delay_iFFT + delay_buffering + delay_FIR - 1 % + 4000

init_re_even_1 = csvread('input_files/init_re_even_1.csv');
init_im_even_1 = csvread('input_files/init_im_even_1.csv');
init_re_odd_1 = csvread('input_files/init_re_odd_1.csv');
init_im_odd_1 = csvread('input_files/init_im_odd_1.csv');
init_re_even_2 = csvread('input_files/init_re_even_2.csv');
init_im_even_2 = csvread('input_files/init_im_even_2.csv');
init_re_odd_2 = csvread('input_files/init_re_odd_2.csv');
init_im_odd_2 = csvread('input_files/init_im_odd_2.csv');
init_re_even_3 = csvread('input_files/init_re_even_3.csv');
init_im_even_3 = csvread('input_files/init_im_even_3.csv');
init_re_odd_3 = csvread('input_files/init_re_odd_3.csv');
init_im_odd_3 = csvread('input_files/init_im_odd_3.csv');
init_re_even_4 = csvread('input_files/init_re_even_4.csv');
init_im_even_4 = csvread('input_files/init_im_even_4.csv');
init_re_odd_4 = csvread('input_files/init_re_odd_4.csv');
init_im_odd_4 = csvread('input_files/init_im_odd_4.csv');

dphi_uint16_even_1 = csvread('input_files/dphi_uint16_even_1.csv');
dphi_uint16_odd_1 = csvread('input_files/dphi_uint16_odd_1.csv');
dphi_uint16_even_2 = csvread('input_files/dphi_uint16_even_2.csv');
dphi_uint16_odd_2 = csvread('input_files/dphi_uint16_odd_2.csv');
dphi_uint16_even_3 = csvread('input_files/dphi_uint16_even_3.csv');
dphi_uint16_odd_3 = csvread('input_files/dphi_uint16_odd_3.csv');
dphi_uint16_even_4 = csvread('input_files/dphi_uint16_even_4.csv');
dphi_uint16_odd_4 = csvread('input_files/dphi_uint16_odd_4.csv');

toneMap_0 = csvread('ToneSelect_map_modified/toneMap_modified_0.csv');
toneMap_1 = csvread('ToneSelect_map_modified/toneMap_modified_1.csv');
toneMap_2 = csvread('ToneSelect_map_modified/toneMap_modified_2.csv');
toneMap_3 = csvread('ToneSelect_map_modified/toneMap_modified_3.csv');
toneMap_4 = csvread('ToneSelect_map_modified/toneMap_modified_4.csv');
toneMap_5 = csvread('ToneSelect_map_modified/toneMap_modified_5.csv');
toneMap_6 = csvread('ToneSelect_map_modified/toneMap_modified_6.csv');
toneMap_7 = csvread('ToneSelect_map_modified/toneMap_modified_7.csv');


% FIR Coefficients must be corrected in Vivado

disp('Finished');