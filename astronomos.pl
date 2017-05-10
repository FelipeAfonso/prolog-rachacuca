% Cria a lista com as 5 estruturas que serão utilizadas para a resolução, apenas uma convenção para não precisar digitar tudo manualmente
pessoas(0, []) :- !.
pessoas(N, [(_Camisa, _Nome, _Idade, _Constelacao, _Altura, _Esporte)|Y]) :- N1 is N-1, pessoas(N1, Y).

% ----------------------------------------------------------------------
% ------- A partir daqui ocorrem as insercoes de dados e dicas ---------
% ----------------------------------------------------------------------

% Todas estas funcionam como uma mascara para a lista de pessoas, basicamente
% mostrando aonde cada informacao pode ser colocada, e ignorando as outras posicoes
% atraves de variaveis anonimas. 

% Dados que nao aparecem na nomenclatura das dicas
dados_nao_mencionados_azul([(azul,_,_,_,_,_)|_]).
dados_nao_mencionados_azul([_|Y]) :- dados_nao_mencionados_azul(Y).

dados_nao_mencionados_vinicius([(_,vinicius,_,_,_,_)|_]).
dados_nao_mencionados_vinicius([_|Y]) :- dados_nao_mencionados_vinicius(Y).

dados_nao_mencionados_altura([(_,_,_,_,1.75,_)|_]).
dados_nao_mencionados_altura([_|Y]) :- dados_nao_mencionados_altura(Y).

% Na segunda posicao esta o astronomo com a camisa Vermelha.
dica1([(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).

% O homem de 29 anos esta em uma das pontas.
dica2([(_,_,29,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica2([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,29,_,_,_)|_]).

% O astronomo de Vermelho esta em algum lugar entre quem gosta de Natacao e quem tem 35 anos, nessa ordem.
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([_|Y]) :- dica3(Y).

% O astronomo de 32 anos gosta de jogar Basquete.
dica4([(_, _, 32, _, _, basquete)|_]).
dica4([_|Y]) :- dica4(Y).

% Quem gosta de Volei esta ao lado de quem tem 1,66 m de altura.
dica5([(_,_,_,_,1.66, _),(_,_,_,_,_, volei)|_]).
dica5([(_,_,_,_,_, volei),(_,_,_,_,1.66,_)|_]).
dica5([_|Y]) :- dica5(Y).

% Milton esta em algum lugar a direita de quem esta de Branco.
dica6([(branco,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([_|Y]) :- dica6(Y).

% O astronomo de 1,70 m esta observando a constelacao de Andromeda.
dica7([(_,_,_,andromeda,1.70,_)|_]).
dica7([_|Y]) :- dica7(Y).

% Os astronomos que gostam de Futebol e Basquete estao lado a lado.
dica8([(_,_,_,_,_,futebol),(_,_,_,_,_,basquete)|_]).
dica8([(_,_,_,_,_,basquete),(_,_,_,_,_,futebol)|_]).
dica8([_|Y]) :- dica8(Y).

% Quem esta observando a constelacao de Pegasus esta em algum lugar entre Cleber e o homem de Branco, nessa ordem.
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([_|Y]) :- dica9(Y).

% Luis esta usando uma camisa Branca.
dica10([(branco, luis,_,_,_,_)|_]).
dica10([_|Y]) :- dica10(Y).

% O homem que gosta de Natacao esta exatamente a esquerda de quem tem 27 anos.
dica11([(_,_,_,_,_,natacao),(_,_,27,_,_,_)|_]).
dica11([_|Y]) :- dica11(Y).

% O astronomo de 1,81 m gosta de jogar Volei.
dica12([(_,_,_,_,1.81,volei)|_]).
dica12([_|Y]) :- dica12(Y).

% Alan esta em uma das pontas.
dica13([(_,alan,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica13([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,alan,_,_,_,_)|_]).

% O astronomo que esta observando a constelacao de Escorpiao esta ao lado do astronomo de 1,72 m.
dica14([(_,_,_,escorpiao,_,_),(_,_,_,_,1.72,_)|_]).
dica14([(_,_,_,_,1.72,_),(_,_,_,escorpiao,_,_)|_]).
dica14([_|Y]) :- dica14(Y).

% O astronomo de Amarelo esta observando Orion.
dica15([(amarelo,_,_,orion,_,_)|_]).
dica15([_|Y]) :- dica15(Y).

% O homem de 1,70 m esta exatamente a direita do astronomo de 29 anos.
dica16([(_,_,29,_,_,_),(_,_,_,_,1.70,_)|_]).
dica16([_|Y]) :- dica16(Y).

% Cleber gosta de jogar Futebol.
dica17([(_,cleber,_,_,_,futebol)|_]).
dica17([_|Y]) :- dica17(Y).

% Na quinta posicao esta quem gosta de jogar Sinuca.
dica18([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,sinuca)|_]).
dica18([_|Y]) :- dica18(Y).

% O astronomo de 33 anos e o mais baixo.
dica19([(_,_,33,_,1.66,_)|_]).
dica19([_|Y]):- dica19(Y).

% O astronomo de Verde esta em algum lugar entre quem tem 29 anos e quem observa a constelacao de Escorpiao, nessa ordem.
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([_|Y]) :- dica20(Y).

% O homem de 1,66 m esta observando a constelacao de Aries.
dica21([(_,_,_,aries,1.66,_)|_]).
dica21([_|Y]) :- dica21(Y).

% Logica que engloba todos os enunciados de dicas e exibe eles na tela
resolver(Pessoas) :-
    pessoas(5, Pessoas),
    dados_nao_mencionados_azul(Pessoas),
    dados_nao_mencionados_vinicius(Pessoas),
    dados_nao_mencionados_altura(Pessoas),
    dica1(Pessoas),
    dica2(Pessoas),
    dica3(Pessoas),
    dica4(Pessoas),
    dica5(Pessoas),
    dica6(Pessoas),
    dica7(Pessoas),
    dica8(Pessoas),
    dica9(Pessoas),
    dica10(Pessoas),
    dica11(Pessoas),
    dica12(Pessoas),
    dica13(Pessoas),
    dica14(Pessoas),
    dica15(Pessoas),
    dica16(Pessoas),
    dica17(Pessoas),
    dica18(Pessoas),
    dica19(Pessoas),
    dica20(Pessoas),
    dica21(Pessoas),
    exibir_lista(Pessoas).

% Formata a lista de Pessoas de uma forma mais parecida com o layout do rachacuca
exibir_lista([(Camisa1,Nome1,Idade1,Const1,Altura1,Esporte1),
              (Camisa2,Nome2,Idade2,Const2,Altura2,Esporte2),
              (Camisa3,Nome3,Idade3,Const3,Altura3,Esporte3),
              (Camisa4,Nome4,Idade4,Const4,Altura4,Esporte4),
              (Camisa5,Nome5,Idade5,Const5,Altura5,Esporte5)]):-
    write('\n              -----------------------------------------------------------\n             |Astronomo 1|Astronomo 2|Astronomo 3|Astronomo 4|Astronomo 5|'),
    format("~n|~`-t~73||~n"),
    format("|Camisa~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Camisa1, Camisa2, Camisa3, Camisa4, Camisa5]),
    format("|~`-t~73||~n"),
    format("|Nome~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Nome1, Nome2, Nome3, Nome4, Nome5]),
    format("|~`-t~73||~n"),
    format("|Idade~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Idade1, Idade2, Idade3, Idade4, Idade5]),
    format("|~`-t~73||~n"),
    format("|Constelacao~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Const1, Const2, Const3, Const4, Const5]),
    format("|~`-t~73||~n"),
    format("|Altura~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Altura1, Altura2, Altura3, Altura4, Altura5]),
    format("|~`-t~73||~n"),
    format("|Esporte~t~13||~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~t~a~t~12+|~n", 
            [Esporte1, Esporte2, Esporte3, Esporte4, Esporte5]),
    format("|~`-t~73||~n~n~n").