%% Methods
% First Method
Rx=input('Rx=');
f=input('f=');
deltaT=input('deltaT=');
Vin=input('Vin=');
Vout=input('Vout=');
DCVin=input('DCVin=');
DCVout=input('DCVout=');
omega = 2*pi*f;
phi = omega*deltaT;
L = Rx*((Vin/Vout)*imag(exp(1j*phi)))/(omega);
R = findR(DCVin, DCVout, Rx);
Q = findQ(omega, L, R);
fprintf('%d %d %d',L,R,Q);
