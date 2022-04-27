function y = MNumericosPVI(f,a,b,n,y0)
% Aplicação de todos os métodos em simulatneo

% Alunos: 
% Chelsea Duarte - 2021100010
% Daniel Tinoco - 202112552
% Gonçalo Moreira - 2021133433   

Euler = MEuler(f,a,b,n,y0);
EulerMelhorado = MEulerM(f,a,b,n,y0);
RungeKutta2 = MRK2(f,a,b,n,y0);
RungeKutta3 = MRK3(f,a,b,n,y0);
RungeKutta4 = MRK4(f,a,b,n,y0);
Heuns = MHeuns(f,a,b,n,y0);
y=table(Euler',EulerMelhorado',RungeKutta2',RungeKutta3',RungeKutta4',Heuns','VariableNames',{'Euler','Euler Melhorado','RungeKutta2','RungeKutta3','RungeKutta4','Heuns'});
end