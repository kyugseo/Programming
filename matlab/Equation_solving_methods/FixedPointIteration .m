%FPI
clear, clc;
es=1;
i=0;
xi=-1;
fprintf('iter \t xi \t f(x)\t ea \n');
fprintf('%5d %10.8f \n',[i xi]);

f=@(x) x^5-x^4+x^3-x^2+1;
g=@(x) x-(x^5-x^4+x^3-x^2+1)/(5*x^4-4*x^3+3*x^2-2*x)
ea =abs((g(xi)-xi)/g(xi)*100);
fprintf('iter \t xi \t f(x)\t ea \n');
i = i+1;
fprintf('%5d\t%10.8f\t%10.8f\t%10.8f \n',[i g(xi) f(xi) ea]');

while i<11
   ea =abs((g(xi)-xi)/g(xi)*100);
   i=i+1;
   fprintf('%5d\t%10.8f\t%10.8f\t%10.8f \n',[i g(xi) f(xi) ea]');
   xi = g(xi);
end
