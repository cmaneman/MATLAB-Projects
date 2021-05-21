%y or f(x)=  ab^x  exponential regression
%y or f(x)= ax^b   power regression model
n = 12;
disp('Numbers 1 through 12: ');
xv = 1:n;
yv = [0.0147339,0.01461316,0.01278996,0.01218322,0.0102341,0.009077431,0.007713023,0.006631856,0.005852748,0.005045347,0.005001693,0.00500168];

disp(xv);
disp(yv);

disp('---EXPONENTIAL REGRESSION---');

xbar = mean(xv); %mean of the x values
disp('Mean of x values: ');
disp(xbar);

disp('log of y values:');
disp(log(yv));
lnyi = log(yv); %natural log of the y values
LNybar = mean(lnyi);%mean of the natural log of the y values
disp('Natural Mean of y values: ');
disp(LNybar);
xi2 = xv.^2; %Squared x values individually
disp(xi2);

xi = sum(xv); %Sum of all the x values

sxx = xi2 - (12 * xbar.^2); %Sum of the squares for x --- Sxx

syy = (lnyi.^2)- 12 * (LNybar.^2); %Sum of the squares for y --- Syy

sxy = (xi*lnyi) - (12 * xbar * LNybar);%sum of the product of the x and y values --- Sxy

B = exp(sxy/sxx); %Trend line for B

A = exp(LNybar - xbar * log(B)); %Trend line for B

y = A * B.^xi; %Trend line for A * B^x

r1 = sxy / sqrt(sxx) * sqrt(syy); %Correlation coefficient

disp('r = ');
r1 = abs(r1); %Absolute Value of r
disp(r1);

if(r1 < 0.7 || r1 <= 1)
disp('Strong Correlation'); 

elseif(r1 < 0.4 || r1 < 0.7)
disp('Moderate Correlation');

elseif(r1 < 0.2 || r1 < 0.4)
disp('Weak Correlation');

elseif(r1 <= 0 || r1 < 0.2)
disp('No Correlation');

else
disp('Uhhh how did I get here???');

end
    

disp('---POWER REGRESSION---');
%The x and y values for power regression will use the
%same original values used from the begining of the program.

xw = 1:n;
yw = [0.0147339,0.01461316,0.01278996,0.01218322,0.0102341,0.009077431,0.007713023,0.006631856,0.005852748,0.005045347,0.005001693,0.00500168];

lnxw = log(xw); %Natural log of the x values
meanlnxw = mean(lnxw); %Mean of the natural log of the x values

lnyw = log(yw); %Natural log of the y values
meanlnyw = mean(lnyw); %Mean of the natural log of the y values

lnxw2 = lnxw.^2;%Squared natural log of the x values
meanlnxw2 = meanlnxw.^2; %Squared Mean of the natural log of the x values

sxx2 = lnxw2 - (12 * meanlnxw2); %Sum of the squares for x --- Sxx

lnyw2 = lnyw.^2;%Squared natural log of the y values
meanlnyw2 = meanlnyw.^2;%Squared Mean of the natural log of the y values

syy2 = lnyw2 - (12 * meanlnyw2); %Sum of the squares for y --- Syy

sxy2 = (lnxw .* lnyw) - (12 .* meanlnxw .* meanlnyw); %sum of the product of the x and y values --- Sxy

B2 = sxy2/sxx2; %Trend line for B

A2 = exp(meanlnyw - (B * meanlnxw)); %Trend line for A

y2 = A2 * xw.^B; %Trend line for y = A * x^B

r2 = sxy2 / sqrt(sxx2) * sqrt(syy); %Correlation coefficient

disp('r = ');
r2 = abs(r2); %Absolute Value of r
disp(r2);

if(r2 < 0.7 || r2 <= 1)
disp('Strong Correlation'); 

elseif(r2 < 0.4 || r2 < 0.7)
disp('Moderate Correlation');

elseif(r2 < 0.2 || r2 < 0.4)
disp('Weak Correlation');

elseif(r2 <= 0 || r2 < 0.2)
disp('No Correlation');

else
disp('Uhhh how did I get here???');

end