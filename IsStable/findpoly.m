function [poly, argmatr] = findpoly(argmatr)
    n = length(argmatr);
    poly = 1;
    
    for i = n:-1:2
        j = i - 1;
        
        while (j > 0) && (abs(argmatr(i, j)) < 1e-12)
			j = j - 1;
        end
        
        if (j ~= 0)
			P = eye(n);
			P(i - 1, i - 1) = 0;
            P(j, j) = 0;
			P(i - 1, j) = 1;
            P(j, i - 1) = 1;
			argmatr = P * argmatr * P;
            [invM, M] = trans(argmatr, i);
            argmatr = invM * argmatr * M;
        else
            poly_ = [1, -argmatr(i, i:n)];
			poly = polymultiply(poly_, poly);
			argmatr = argmatr(1:i - 1, 1:i - 1);
			n = i - 1;
        end
    end
    poly_ = [1, -argmatr(1, :)];
    poly = polymultiply(poly, poly_);
end

