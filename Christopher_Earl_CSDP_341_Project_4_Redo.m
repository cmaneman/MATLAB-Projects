a = 0;
b = 5;
arr = [a,b];
%f(x)=x^+x-1
for i = 0:10

c = (arr(1) + arr(2))/2;
y1 = (arr(1)^9)+arr(1) - 1;

y2 = (arr(2)^9)+arr(2) - 1;

yc = c^9 + c - 1; 

new = yc * y2;

if yc * y2 < 0
    
arr(1) = c;    
    
elseif yc * y1 > 0
    
arr(2) = c;
end

end

