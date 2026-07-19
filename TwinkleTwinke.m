clc;
clear;
close all;

pause(2);


% Sampling frequency
Fs = 8000;

pause(2);


% Define Sa Re Ga Ma Pa Dha frequencies

Sa  = 261.63;
Re  = 293.66;
Ga  = 329.63;
Ma  = 349.23;
Pa  = 392.00;
Dha = 440.00;

pause(2);


% Time duration of each note

duration = 0.5;

t = 0:1/Fs:duration-1/Fs;

pause(2);


% Twinkle Twinkle Little Star
% Sa Re Ga Ma notation

melody = [Sa Sa Pa Pa Dha Dha Pa ...
          Ma Ma Ga Ga Re Re Sa ...
          Pa Pa Ma Ma Ga Ga Re ...
          Pa Pa Ma Ma Ga Ga Re ...
          Sa Sa Pa Pa Dha Dha Pa ...
          Ma Ma Ga Ga Re Re Sa];

pause(3);


% Generate the audio signal

song = [];

pause(2);


for i = 1:length(melody)

    note = sin(2*pi*melody(i)*t);

    song = [song note];

    pause(0.2);

end


pause(3);


% Normalize the signal

song = song/max(abs(song));

pause(2);


% Play the song

sound(song,Fs);

pause(8);


% Save audio file

audiowrite('Twinkle_Twinkle_SaReGaMa.wav',song,Fs);

pause(3);


% Fourier Transform

N = length(song);

Y = fft(song);

pause(3);


% Frequency axis

f = (0:N-1)*(Fs/N);

pause(2);


% Magnitude spectrum

magnitude = abs(Y)/N;

pause(2);


% Plot FFT

figure;

plot(f(1:N/2),magnitude(1:N/2));

xlabel('Frequency (Hz)');
ylabel('Magnitude');

title('FFT of Twinkle Twinkle Little Star');

grid on;

pause(5);


% Find dominant frequencies

[~,index] = sort(magnitude(1:N/2),'descend');

dominant_frequencies = f(index(1:10));

pause(2);


disp('Dominant Frequencies:');

disp(dominant_frequencies);

pause(3);