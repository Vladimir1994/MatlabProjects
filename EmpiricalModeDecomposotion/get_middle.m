function [middle_mean] = get_middle(arg)
    [u_peaks,u_locations] = findpeaks(arg);
    upper_spln = spline(u_locations, u_peaks, 1:length(arg));
    [l_peaks, l_locations] = findpeaks(-arg);
    lower_spln = -spline(l_locations, l_peaks, 1:length(arg));
    middle_mean  = ((upper_spln + lower_spln) / 2)';
end

