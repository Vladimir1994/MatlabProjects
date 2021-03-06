function [imfs, decomposition] = emd(signal, E, k)
    tic
    l = length(signal);
    decomposition = zeros(l, 20);
    imfs = zeros(l, 20);
    
    decomposition(:, 1) = signal;

    if k == 0
        i = 1;
        while ~is_mon(decomposition(:, i))
            imf = emdStep(decomposition(:, i), E);
            decomposition(:, i + 1) = decomposition(:, i) - imf;
            imfs(:, i) = imf;
            i = i + 1;
            toc
        end
    else
        for i =1:k
            imf = emdStep(decomposition(:, i), E);
            decomposition(:, i + 1) = decomposition(:, i) - imf;
            imfs(:, i) = imf;
            toc
        end
    end
    toc
end

