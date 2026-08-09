% RC Low-Pass Filter Frequency Response
clear;
close all;
clc;

%% Circuit parameters
R = 1e3;        % Resistance in ohms
C = 1e-12;     % Capacitance in farads

%% Frequency sweep
% Use a broad range without calculating the cutoff from 1/(2*pi*R*C).
f = logspace(0, 12, 10000);
w = 2 * pi * f;

%% Transfer function: H(s) = 1 / (1 + sRC)
H = 1 ./ (1 + 1i * w * R * C);

magnitude_db = 20 * log10(abs(H));
phase_deg    = angle(H) * 180 / pi;

%% Find the -3 dB frequency from the calculated response
max_gain_db = max(magnitude_db);
target_db = max_gain_db + 10 * log10(1/2);

crossing_index = find(magnitude_db(1:end-1) > target_db & ...
                      magnitude_db(2:end) <= target_db, 1);

if isempty(crossing_index)
    error("No -3 dB crossing was found inside the frequency sweep.");
end

% Interpolate on the logarithmic frequency axis between the samples that
% surround the crossing.
x1 = log10(f(crossing_index));
x2 = log10(f(crossing_index + 1));
y1 = magnitude_db(crossing_index);
y2 = magnitude_db(crossing_index + 1);

log_fc = x1 + (target_db - y1) * (x2 - x1) / (y2 - y1);
fc = 10^log_fc;

printf("Maximum gain: %.4f dB\n", max_gain_db);
printf("-3 dB target: %.4f dB\n", target_db);
printf("Measured -3 dB frequency: %.2f Hz\n", fc);

%% Plot magnitude and phase
figure;

subplot(2, 1, 1);
semilogx(f, magnitude_db, "b", "linewidth", 2);
grid on;
ylabel("Magnitude (dB)");
title("RC Low-Pass Filter Frequency Response");
hold on;
plot(f, target_db * ones(size(f)), "--k", "linewidth", 1.0);
mag_limits = ylim();
plot([fc fc], mag_limits, "--r", "linewidth", 1.2);
text(fc, mag_limits(1) + 0.1 * diff(mag_limits), ...
     sprintf("  f_c = %.1f Hz", fc), "color", "r");
hold off;

subplot(2, 1, 2);
semilogx(f, phase_deg, "b", "linewidth", 2);
grid on;
xlabel("Frequency (Hz)");
ylabel("Phase (degrees)");
hold on;
phase_limits = ylim();
plot([fc fc], phase_limits, "--r", "linewidth", 1.2);
hold off;

%% Keep the plot open when this file is run from a terminal
disp("Press Enter to close the plot and exit.");
pause();
