pessoas(0, []) :- !.
pessoas(N, [(_Camisa, _Nome, _Idade, _Constelacao, _Altura, _Esporte)|Y]) :- N1 is N-1, pessoas(N1, Y).

bolsa('vermelha').
bolsa('branca').
bolsa('verde').
bolsa('amarela').
bolsa('azul').

pessoa(1, [X|_], X) :- !.
pessoa(N, [_|Y], R) :- N1 is N-1, pessoa(N1, Y, R).

% Na segunda posi��o est� o astr�nomo com a camisa Vermelha.
dica1(Pessoas) :- pessoa(2, Pessoas, (vermelho,_,_,_,_,_)).

% O homem de 29 anos est� em uma das pontas.
dica2([(_,_,29,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica2([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,29,_,_,_)|_]).
dica2([_|Y]) :- dica2(Y).

% O astr�nomo de Vermelho est� em algum lugar entre quem gosta de
% Nata��o e quem tem 35 anos, nessa ordem.
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([(_,_,_,_,_,natacao),(_,_,_,_,_,_),(_,_,_,_,_,_),(vermelho,_,_,_,_,_),(_,_,35,_,_,_)|_]).
dica3([_|Y]) :- dica3(Y).

% O astr�nomo de 32 anos gosta de jogar Basquete.
dica4([(_, _, 32, _, _, basquete)|_]).
dica4([_|Y]) :- dica4(Y).

%Quem gosta de V�lei est� ao lado de quem tem 1,66 m de altura.
dica5([(_,_,_,_,1.66, _),(_,_,_,_,_, volei)|_]).
dica5([(_,_,_,_,_, volei),(_,_,_,_,1.66,_)|_]).
dica5([_|Y]) :- dica5(Y).

%Milton est� em algum lugar � direita de quem est� de Branco.
dica6([(branco,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([(branco,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_, milton,_,_,_,_)|_]).
dica6([_|Y]) :- dica6(Y).

%O astr�nomo de 1,70 m est� observando a constela��o de Andr�meda.
dica7([(_,_,_,andromeda,1.70,_)|_]).
dica7([_|Y]) :- dica7(Y).

%Os astr�nomos que gostam de Futebol e Basquete est�o lado a lado.
dica8([(_,_,_,_,_,futebol),(_,_,_,_,_,basquete)|_]).
dica8([(_,_,_,_,_,basquete),(_,_,_,_,_,futebol)|_]).
dica8([_|Y]) :- dica8(Y).

% Quem est� observando a constela��o de Pegasus est� em algum lugar entre
% Cleber e o homem de Branco, nessa ordem.
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(_,_,_,_,_,_),(branco,_,_,_,_,_)|_]).
dica9([(_,cleber,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,pegasus,_,_),(branco,_,_,_,_,_)|_]).
dica9([_|Y]) :- dica9(Y).

%Lu�s est� usando uma camisa Branca.
dica10([(branco, luis,_,_,_,_)|_]).
dica10([_|Y]) :- dica10(Y).

% O homem que gosta de Nata��o est� exatamente � esquerda de quem tem 27
% anos.
dica11([(_,_,_,_,_,natacao),(_,_,27,_,_,_)|_]).
dica11([_|Y]) :- dica11(Y).

%O astr�nomo de 1,81 m gosta de jogar V�lei.
dica12([(_,_,_,_,1.81,volei)|_]).
dica12([_|Y]) :- dica12(Y).

%Alan est� em uma das pontas.
dica13([(_,alan,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica13([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,alan,_,_,_,_)|_]).
dica13([_|Y]) :- dica13(Y).

% O astr�nomo que est� observando a constela��o de Escorpi�o est� ao lado
% do astr�nomo de 1,72 m.
dica14([(_,_,_,escorpiao,_,_),(_,_,_,_,1.72,_)|_]).
dica14([(_,_,_,_,1.72,_),(_,_,_,escorpiao,_,_)|_]).
dica14([_|Y]) :- dica14(Y).

%O astr�nomo de Amarelo est� observando Orion.
dica15([(amarelo,_,_,orion,_,_)|_]).
dica15([_|Y]) :- dica15(Y).

%O homem de 1,70 m est� exatamente � direita do astr�nomo de 29 anos.
dica16([(_,_,29,_,_,_),(_,_,_,_,1.70,_)|_]).
dica16([_|Y]) :- dica16(Y).

%Cleber gosta de jogar Futebol.
dica17([(_,cleber,_,_,_,futebol)|_]).
dica17([_|Y]) :- dica17(Y).

%Na quinta posi��o est� quem gosta de jogar Sinuca.
dica18(Pessoas) :- pessoa(5, Pessoas, (_,_,_,_,_,sinuca)).

%O astr�nomo de 33 anos � o mais baixo.
dica19([(_,_,33,_,1.66,_)|_]).
dica19([_|Y]):- dica19(Y).

% O astr�nomo de Verde est� em algum lugar entre quem tem 29 anos e quem
% observa a constela��o de Escorpi�o, nessa ordem.
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([(_,_,29,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,escorpiao,_,_)|_]).
dica20([_|Y]) :- dica20(Y).

%O homem de 1,66 m est� observando a constela��o de Aries.
dica21([(_,_,_,aries,1.66,_)|_]).
dica21([_|Y]) :- dica21(Y).

% Dados que n�o est�o nas dicas
dados_restantes_azul([(azul,_,_,_,_,_)|_]).
dados_restantes_azul([_|Y]) :- dados_restantes_azul(Y).

dados_restantes_vinicius([(_,vinicius,_,_,_,_)|_]).
dados_restantes_vinicius([_|Y]) :- dados_restantes_vinicius(Y).

dados_restantes_altura([(_,_,_,_,1.75,_)|_]).
dados_restantes_altura([_|Y]) :- dados_restantes_altura(Y).

resolver(Pessoas) :-
    pessoas(5, Pessoas),
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
    dados_restantes_azul(Pessoas),
    dados_restantes_vinicius(Pessoas),
    dados_restantes_altura(Pessoas),
    imprimir_lista(Pessoas).

imprimir_lista([]) :- write('\n\n        <<<<FIM>>>> \n\n').
imprimir_lista([X|Y]):-
    write('\n     ----------------------------\n'),
    write(' | '), write(X), write(' | '),
    imprimir_lista(Y).

