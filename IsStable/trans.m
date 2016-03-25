function [invtransmatr, transmatr] = trans(argmatr, count)
    invtransmatr = eye(n);
    transmatr = eye(n);
    invtransmatr(count - 1, :) = argmatr(count, :);
    transmatr(count - 1, :) = (- argmatr(count ,:)) ./ ...
        argmatr(count, count - 1);
    transmatr(count - 1, count - 1) = 1 ./ argmatr(count, count - 1);
end

