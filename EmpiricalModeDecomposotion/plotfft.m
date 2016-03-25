function [f, y] = plotfft(signal, Fs)
    NFFT = 2 ^ nextpow2(length(signal)); 
    Y = fft(signal, NFFT) / length(signal);
    f = Fs / 2 * linspace(0, 1, NFFT / 2 + 1);
    % Plot single-sided amplitude spectrum.
    plot(f, 2 * abs(Y(1:NFFT / 2 + 1)),'b') 
    title('Å = 0.001')
    xlabel('Frequency (Hz)')
    ylabel('|IMF6(f)|')
    y = abs(Y);
end

