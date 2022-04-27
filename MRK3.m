function y = MRK3(f,a,b,n,y0)
%Método de Runge-Kutta de ordem 3
%   y = MRK3(f,a,b,n,y0) 
%   y'= f(t,y), t=[a, b], y(a)=y0
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos
%   y0 - condição inicial
%OUTPUT: 
%   y - vector das soluções aproximações
%    , i =0,1,...,n-1

% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433   

h = (b-a)/n;
t = a:h:b;
y = zeros(1,n+1);
y(1) = y0;

for i = 1:n
    k1 = f(t(i),y(i));
    k2 = f(t(i)+(h/2),y(i)+(0.5*h*k1));
    k3 = f(t(i)+h,y(i)- h*k1+(2*h*k2)); 
    
    y(i+1) = y(i) + (h/6)*(k1+(4*k2)+k3);
   
end
end