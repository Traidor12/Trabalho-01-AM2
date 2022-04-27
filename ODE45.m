function [t,y] = ODE45(f,a,b,n,y0)
%Função ODE45 do matlab
%   y = ODE45(f,a,b,n,y0) 
%   y'= f(t,y), t=[a, b], y(a)=y0
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos
%   y0 - condição inicial
%OUTPUT: 
%   y - vector das soluções aproximações

% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433  


h=(b-a)/n;
t1=a:h:b;
[t,y] = ode45(f,t1,y0);

end