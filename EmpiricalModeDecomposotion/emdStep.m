function [imf] = emdStep(signal, E)
    imf = signal;
    m = get_middle(imf);

    while is_imf(imf, m, E) == 0
        imf = imf - m;
        m = get_middle(imf);
    end
end

