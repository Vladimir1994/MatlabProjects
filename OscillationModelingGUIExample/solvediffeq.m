function [T, Y] = solvediffeq(k1, k2, Tstart, Tstop, x0, v0)
    [T, Y] = ode23(@diffeq, linspace(Tstart, Tstop, 350), [x0 v0]);
    function [dxdt] = diffeq(t, x)
        dxdt = zeros(2,1);
        dxdt(1) = x(2);
        dxdt(2) = -k1 * x(2) - k2 * x(1);
    end
end

