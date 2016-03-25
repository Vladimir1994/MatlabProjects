function [output_arg] = is_mon(arg)

    number_of_u_peaks = length(-findpeaks(arg));
    number_of_l_peaks = length(findpeaks(arg));

    if number_of_u_peaks < 2 || number_of_l_peaks < 2
        output_arg = 1;
    else
        output_arg = 0;
    end

end