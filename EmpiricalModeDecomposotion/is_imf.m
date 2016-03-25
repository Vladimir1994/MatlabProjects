function [ imf ] = is_imf( arg, middle_arg, E )

    number_of_roots = sum(arg(1:length(arg)-1).*arg(2:length(arg))<0);

    number_of_peaks = length(findpeaks(arg))+length(findpeaks(-arg));

    if abs(number_of_peaks-number_of_roots)<= 1
        flag_1=1;
    else
        flag_1=0;
    end

    if middle_arg(100:length(middle_arg)-100) < E
        flag_2 = 1;
    else
        flag_2 = 0;
    end
    imf = flag_2*flag_1;
end

