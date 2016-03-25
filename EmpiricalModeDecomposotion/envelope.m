function [envelope] = envelope(sig_arg, arg)
    env_length = length(sig_arg) - arg;
    envelope = zeros(1, env_length);
    sig_arg = sig_arg .* sig_arg;
    for i = 1:(env_length)
        envelope(i) = sum(sig_arg(i:(i + arg)));
    end
end

