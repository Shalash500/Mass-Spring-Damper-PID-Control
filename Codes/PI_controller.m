m = 1;
b = 0.5;
k = 0.25;
transfer_fnc = tf(1, [m,b,k]);
kp = 6.71926735265958;
ki = 1.97608543136126;
kd = 0;
c = pid(kp, ki, kd);
T = feedback(c*transfer_fnc, 1);
step(T, 9)
info = stepinfo(T)