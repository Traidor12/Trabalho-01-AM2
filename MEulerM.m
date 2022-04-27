function y = MEulerM(f,a,b,n,y0)
%Método de Euler Melhorado 
%   y = MEulerM(f,a,b,n,y0) 
%   y'= f(t,y), t=[a, b], y(a)=y0
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos
%   y0 - condição inicial
%OUTPUT: 
%   y - vector das soluções aproximações
%   y(i+1) = y(i)+(h/2)*(f(t(i),y(i))+f(t(i+1),y(i+1))) , i =0,1,...,n-1

% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433

h = (b-a)/n;
t = a:h:b;
y = zeros(1,n+1);
y(1) = y0;
for i = 1:n
    y(i+1) = y(i)+h*f(t(i),y(i));
    y(i+1) = y(i)+(h/2)*(f(t(i),y(i))+f(t(i+1),y(i+1)));
end