function [L, U, P, count] = LUP(A)

    n = length(A);
    P = eye(n);
    count = 0;

    for i = 1:n

        [~, pos] = max(abs(A(i:n, i)));
        pos = pos + i - 1;
    
        if pos ~= i
            count = count + 1;
            A = SwapRows(A, i, pos);
            P = SwapRows(P, i, pos);
        end

        for j = (i + 1):n
            A(j, i) = A(j, i) / A(i, i);
            for k = (i + 1):n
                A(j, k) = A(j, k) - ... 
                    A(j, i) * A(i, k);
            end
        end

    end  

    L = tril(A);
    U = triu(A);
    
    for i = 1:n
        L(i, i) = 1;
    end

    function [argmatr] = SwapRows(argmatr, row1, row2)
        tmp = argmatr(row1, :);
        argmatr(row1, :) = argmatr(row2, :);
        argmatr(row2, :) = tmp;
    end
end

