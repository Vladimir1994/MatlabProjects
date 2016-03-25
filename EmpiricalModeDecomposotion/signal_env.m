function [e] = signal_env(mode_1)

[y1, x1] = findpeaks(mode_1);
%[y2,x2] = findpeaks(mode_2);

e{1} = spline(x1, y1, 1:length(mode_1));
%e{2} = spline(x2,y2,1:length(mode_2));

%figure(2)
%hold on;
%plot(mode_2);
%plot(e{2},'r');
%figure(1)
hold on;
plot(mode_1);
plot(e{1}, 'r');

end

