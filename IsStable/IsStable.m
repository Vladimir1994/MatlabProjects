function [output, matr, answ] = IsStable(argmatr)

    if size(argmatr, 1) == size(argmatr, 2)
        charpol = findpol(argmatr);
    else
        if size(argmatr, 1) == 1 || size(argmatr, 2) == 1
            charpol = argmatr;
        else
            error('Input data must be square matrix or vector.')
        end
    end
    n = length(charpol);
    umatr = zeros(fix(n / 2), fix(n / 2) * 2);
    lmatr = zeros(fix(n / 2), fix(n / 2) * 2);
    
    for i = 1:fix(n / 2)
        umatr(i, 1:2 * i) = fliplr(charpol(1:2 * i));
        if mod(n, 2) == 1
            lmatr(i, 2 * i:fix(n / 2) * 2) = ...
                fliplr(charpol((2 * i + 1):n));
        else
            lmatr(i, 2 * i:n) = fliplr(charpol(2 * i:n));
        end
    end
    
    matr = [umatr; lmatr];
    answ = zeros(1, fix(n / 2) * 2);
    
    for i = 1:fix(n / 2) * 2
        answ(i) = mydet(matr(1:i, 1:i));
    end
    
    minansw = min(answ);
    
    if minansw > 0
        output = 1;
    else
        output = 0;
    end
end

