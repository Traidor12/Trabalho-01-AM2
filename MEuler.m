    function y = MEuler(f,a,b,n,y0)
%Método de Euler 
%   y = MEuler(f,a,b,n,y0) 
%   y'= f(t,y), t=[a, b], y(a)=y0
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos
%   y0 - condição inicial
%OUTPUT: 
%   y - vector das soluções aproximações
%   y(i+1) = y(i)+h*f(t(i),y(i)) , i =0,1,...,n-1

% Baseado no ficheiro "NEuler" providenciado pelo Professor Arménio Correia
% para a realização do trabalho prático.
% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433

h = (b-a)/n;
y = zeros(1,n+1);
t = a:h:b;
y(1) = y0;
for i = 1:n
    y(i+1) = y(i)+h*f(t(i),y(i));
end

end