function [L, R, Q, phi] = findInd(Rx, f, deltaT, Vin, Vout, DCVin, DCVout)
omega = 2*pi*f;
phi = omega*deltaT;
L = Rx*((Vin/Vout)*imag(exp(1j*phi)))/(omega);
R = findR(DCVin, DCVout, Rx);
Q = findQ(omega, L, R);
end 

function R = findR(DCVin, DCVout, Rx)
R = Rx*(DCVin-DCVout)/DCVout;
end

function Q = findQ(omega, L, R)
Q = omega*L/R;
end