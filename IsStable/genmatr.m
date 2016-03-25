function [ output, output_vect ] = genmatr(n)

    E = 1e-5;

    output = round(200 * rand(n) - 100);
    output_vect = round(200 * rand(n, 1) - 100);
    
    
    while abs(det(output)) <= E
        output = (200 * rand(n) - 100);
    end
end

