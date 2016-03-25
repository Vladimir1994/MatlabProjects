function [detA] = mydet(A)
    
    [~, U, ~, cnt] = LUP(A);
    detu = 1;
    dim = length(A);
    
    for t = 1:dim
        detu = detu * U(t, t);
    end
    
    detp = (-1) ^ (cnt);
    detA = detp * detu;
end

