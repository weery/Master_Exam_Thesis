clear all,close all ,clc

wave_length_min = 390;
wave_length_max = 700;
wave_length_nr_max = 850;

wave_length_delta = 1;

wave_length_range = wave_length_min:wave_length_delta:wave_length_max;

plot(wave_length_range,wave_length_range*0)

wave_length_blue_start  = 390;
wave_length_blue_end    = 520;
wave_length_blue_range = wave_length_blue_start:wave_length_delta:...
    wave_length_blue_end;
wave_length_blue_distribution_alpha = 5;
wave_length_blue_distribution_beta = 4;

wave_length_blue_data = wave_length_distribution(wave_length_blue_range,...
    wave_length_blue_distribution_alpha,...
    wave_length_blue_distribution_beta);



wave_length_green_start = 480;
wave_length_green_end   = 610;
wave_length_green_range = wave_length_green_start:wave_length_delta:...
    wave_length_green_end;
wave_length_green_distribution_alpha = 3;
wave_length_green_distribution_beta = 3;

wave_length_green_data = wave_length_distribution(...
    wave_length_green_range,...
    wave_length_green_distribution_alpha,...
    wave_length_green_distribution_beta);

wave_length_red_start   = 590;
wave_length_red_end     = 700;
wave_length_red_range   = wave_length_red_start:wave_length_delta:...
    wave_length_red_end;
wave_length_red_distribution_alpha = 4;
wave_length_red_distribution_beta = 5;

wave_length_red_data = wave_length_distribution(...
    wave_length_red_range,...
    wave_length_red_distribution_alpha,...
    wave_length_red_distribution_beta);

wave_length_nr_move     = -100;
wave_length_nr_start   = 680 +wave_length_nr_move;
wave_length_nr_end     = 1400+wave_length_nr_move;
wave_length_nr_range   = wave_length_nr_start:wave_length_delta:...
    wave_length_nr_end;
wave_length_nr_distribution_alpha = 1.5;
wave_length_nr_distribution_beta = 5;

wave_length_nr_data = wave_length_distribution(...
    wave_length_nr_range,...
    wave_length_nr_distribution_alpha,...
    wave_length_nr_distribution_beta);



plot(wave_length_blue_range,wave_length_blue_data,'-.b')
hold on
plot(wave_length_green_range,wave_length_green_data,'-g')
%red_plot =plot(wave_length_red_range,wave_length_red_data,'--r');
%red_plot.Color=[1,0,0,0.1];
nr_plot =plot(wave_length_nr_range,wave_length_nr_data,':');
nr_plot.Color= [0.5,0,0];

axis([wave_length_min, wave_length_nr_max,0,1])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
ylabel('Intensity, $I$','interpreter','latex','fontsize',16)
xlabel('Wavelength, $\lambda\;[nm]$','interpreter','latex','fontsize',16)
title('Intensity ranges for modified nRGB color channels', 'interpreter','latex',...
    'fontsize',16)
legend({'Blue channel','Green channel',...
    'Near infrared channel'},...
    'interpreter','latex','location','southeast','fontsize',10)
