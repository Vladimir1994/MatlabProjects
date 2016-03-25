function [F, A, W] = hilb(sig, df)
    ansig = hilbert(sig);
    A = abs(ansig);
    W = unwrap(angle(ansig));
    F = (diff(W) * df) / (2 * pi);
end

