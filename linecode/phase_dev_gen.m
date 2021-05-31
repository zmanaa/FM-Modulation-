Function_gen;
k_f     = 1000;
k_f1    = 3000;
k_f2    = 5000;
int     = cumtrapz(t,signal);
phi     = 2*pi*k_f*int;
phi1    = 2*pi*k_f1*int;
phi2    = 2*pi*k_f2*int;