function y = MHeuns(f,a,b,n,y0)
%Método de Heun's
%   y = MHeuns(f,a,b,n,y0) 
%   y'= f(t,y), t=[a, b], y(a)=y0
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos
%   y0 - condição inicial
%OUTPUT: 
%   y - vector das soluções aproximações
%   y(i+1) = y(i)+(h/2)*(k1*k2) , i =0,1,...,n-1

% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433  
h = (b-a)/n;
y = zeros(1,n+1);
t = a:h:b;
y(1) = y0;
for i = 1:n
    k1 = f(t(i),y(i));
    k2 = f(t(i)+h,y(i)+k1*h);
    y(i+1) = y(i)+(h/2)*(k1+k2);
end