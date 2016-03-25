function [R] = polymultiply(P, Q)
	n = length(P);
	m = length(Q);
	R = zeros(1, n + m - 1);

    for i = 1:n
		for j = 1:m
			R(i + j - 1) = R(i + j - 1) + P(i) * Q(j);
		end
    end
end

