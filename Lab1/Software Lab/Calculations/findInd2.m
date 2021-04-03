function [L, R, Q] = findInd2(f1, f2, Vin1, Vout1, Vin2, Vout2, Rout)
L= (Rout/(2*pi))*sqrt(((Vin1/Vout1-Vin2/Vout2)*(Vin1/Vout1+Vin2/Vout2))/((f1+f2)*(f1-f2)));
R= sqrt(((Rout*Vin2/Vout2)-(2*pi*f2*L))*((Rout*Vin2/Vout2)+(2*pi*f2*L)))-Rout;
omega = 2*pi*f2;
Q= omega*L/R;
end

