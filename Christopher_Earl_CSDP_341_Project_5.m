xv = [0,0,0,0,0]; %x values: 1931, 1941, 1951, 1961
yv = [0,0,0,0,0]; %y values: 66, 81, 93, 101

%x(define) will be 1935
x = 1935;
n = input('How many values do you want to input?:');

%h = x - xi
%s = (x - xi) / h

for i=1:n
    disp(i);
    xv(i) = input('Enter x coordinates(1 - 4): ');
end

for i=1:n
    disp(i);
    yv(i) = input('Enter y coordinates(1 - 4): ');
end

disp(xv);
disp(yv);


h = xv(2)- xv(1);

s = (x - xv(1)) / h;

%Delta-y0: y1 - y0
d1y0 = yv(2) - yv(1);
%Delta-y1: y2 - y1
d1y1 = yv(3) - yv(2);
%Delta-y2: y3 - y2
d1y2 = yv(4) - yv(3);
%Delta-y3: y4 - y3
d1y3 = yv(5) - yv(4);

%------------------

%Delta^2-y0: Delta-y1 - Delta-y0
d2y0 = d1y1 - d1y0;
%Delta^2-y1: Delta-y2 - Delta-y1
d2y1 = d1y2 - d1y1;
%Delta^2-y2: Delta-y3 - Delta-y2
d2y2 = d1y3 - d1y2;
%Delta^2-y3: Delta-y4 - Delta-y3

%------------------

%Delta^3-y0: Delta^2-y1 - Delta^2-y0
d3y0 = d2y1 - d2y0;
%Delta^3-y1: Delta^2-y2 - Delta^2-y1
d3y1 = d2y2 - d2y1;

%y0 + s*(Delta-y0) + ((s(s-1))/2!)*(Delta^2-y0) +
%((s(s-1)(s-2))/3!)*(Delta^3-y0) + ...
f2 = factorial(2);
f3 = factorial(3);
fx = yv(1) + (s*(d1y0)) + (((s*(s-1))/f2) * (d2y0)) + (((s*(s-1)*(s-2))/f3)*(d3y0));

disp(fx);

