function [sig] = create_sin(L, Fs, Fr, Amp)
    T = 1 / Fs;
    t = (0:L - 1) * T;
    sig = Amp * sind(2 * 180 * Fr * t);
end

