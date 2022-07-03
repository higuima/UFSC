% Tarefa 1
% C�lulo de normas de vetores e solu��o de dois sistemas lineares
%Escreva um script para calcular:
% a) a norma (`a sua escolha) das solu�c�oes em cada caso, informando
% o resultado na janela de comandos,
% b) a norma da matriz e de sua inversa informando o resultado
% como no item anterior.
% c) o erro absoluto e o erro relativo entre as solu�c�oes calculadas e
% os vetores b e eb, informando o resultado como no item anterior.

clear % para apagar o que est� na mem�ria antes de executar este scrpit

% informa��es de entrada:
A = [0.2000 0.2500;
0.2500 0.3333];
b = [0.4500; 0.5833];
bt = [0.4500; 0.5834];


% Processamento:
x = A\b;
nx = norm(x);
xp = A\bt;
nxp = norm(xp);
nA = norm(A);
niA = norm(inv(A));
ea =  norm(x - xp); % erro absoluto
er = ea / norm(x); % erro relativo

% sa�da de resultados;
%quest�o 1a)
normax = '||x||=';
normaxp = '||xp||=';
nx1 = num2str(nx);
nxp1 = num2str(nxp);
respostaA = strcat(' As normas das solu��es em cada caso s�o:', normax, nx1, normaxp, nxp1);

%quest�o 1b)
normaA = '||A||= ';
normaiA = '||iA||= ';
nA1 = num2str(nA);
niA1 = num2str(niA);
respostaB = strcat('As normas das matrizes A e sua inversa s�o', normaA,nA1,'e',normaiA, niA1);

% quest�o 1c)
erroabs = '||x-xp||= ';
errorel = '||x - xp|| / ||x|| = ';
x1 = num2str(x);
xp1 =  num2str(xp);
ea1 = num2str(ea);
er1 = num2str(er);
respostaC = strcat('As solu��es calculadas foram x = ', x1, 'e xp1 = ', xp1, '. O erro absoluto foi', erroabs,ea1, ' e o erro relativo foi', errorel, er1, '.');

disp('respostas')
disp(respostaA)
disp(respostaB)
disp(respostaC)
return
