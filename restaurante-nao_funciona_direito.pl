pessoas([(Bolsa1, Nome1, Idade1, Companhia1, Macarrao1, Vinho1),
         (Bolsa2, Nome2, Idade2, Companhia2, Macarrao2, Vinho2),
         (Bolsa3, Nome3, Idade3, Companhia3, Macarrao3, Vinho3),
         (Bolsa4, Nome4, Idade4, Companhia4, Macarrao4, Vinho4),
         (Bolsa5, Nome5, Idade5, Companhia5, Macarrao5, Vinho5)]).

pessoa(1, [X|_], X) :- !.
pessoa(N, [_|Y], R) :- N1 is N-1, pessoa(N1, Y, R).

bolsa('branca').
bolsa('verde').
bolsa('amarela').
bolsa('azul').
bolsa('vermelha').

is_bolsa(X, Y) :- bolsa(Y).

bolsas([]).
bolsas([X|Y], Out) :- include(is_bolsa(Z), X, Out), bolsas(Y, Out).

nao_repeticao([]).
nao_repeticao([X|Y]) :- not(member(X,Y)), nao_repeticao(Y).

% A mulher da bolsa Verde est� em algum lugar entre a dona da bolsa bolsa(branca) e a mulher de 30 anos, nessa ordem.
dica1([(bolsa('branca'),_,_,_,_,_),(verde,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([(bolsa('branca'),_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([(bolsa('branca'),_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([(bolsa('branca'),_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([(bolsa('branca'),_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([(bolsa('branca'),_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica1([_|Y]) :- dica1(Y).

% A mulher acompanhada da M�e vai beber o vinho Franc�s.
dica2([(_,_,_,mae,_,frances)|_]).
dica2([_|Y]) :- dica2(Y).

% Na quarta posi��o est�o as mulheres que v�o comer Ravi�li.
dica3(Pessoas) :- pessoa(4, Pessoas, (_,_,_,_,ravioli,_)).

% Em uma das pontas est� a mulher de 30 anos.
dica4([(_,_,30,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica4([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,30,_,_,_)|_]).
dica4([_|Y]) :- dica4(Y).

% A mulher da bolsa Azul est� em algum lugar � esquerda de quem est� acompanhada da Amiga.
dica5([(azul,_,_,_,_,_),(_,_,_,amiga,_,_)|_]).
dica5([(azul,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,amiga,_,_)|_]).
dica5([(azul,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,amiga,_,_)|_]).
dica5([(azul,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,amiga,_,_)|_]).
dica5([_|Y]) :- dica5(Y).

% Alice est� na quarta posi��o.
dica6(Pessoas) :- pessoa(4, Pessoas, (_,alice,_,_,_,_)).

% A mulher da bolsa Verde est� em algum lugar entre quem vai comer Espaguete e quem vai beber o vinho Chileno, nessa ordem.
dica7([(_,_,_,_,espaguete,_),(verde,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([(_,_,_,_,espaguete,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([(_,_,_,_,espaguete,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([(_,_,_,_,espaguete,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([(_,_,_,_,espaguete,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([(_,_,_,_,espaguete,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica7([_|Y]) :- dica7(Y).

% A dona da bolsa Amarela vai beber o vinho Franc�s.
dica8([(amarela,_,_,_,_,frances)|_]).
dica8([_|Y]) :- dica8(Y).

% A mulher acompanhada da Prima est� na segunda posi��o.
dica9(Pessoas) :- pessoa(2, Pessoas, (_,_,_,prima,_,_)).

% Quem est� acompanhada da Tia est� ao lado da mulher de 25 anos.
dica10([(_,_,_,tia,_,_),(_,_,25,_,_,_)|_]).
dica10([(_,_,25,_,_,_),(_,_,_,tia,_,_)|_]).
dica10([_|Y]) :- dica10(Y).

% Alice est� em algum lugar entre quem vai beber o vinho Italiano e a Tain�, nessa ordem.
dica11([(_,_,_,_,_,italiano),(_,alice,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([(_,_,_,_,_,italiano),(_,alice,_,_,_,_),(_,_,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([(_,_,_,_,_,italiano),(_,_,_,_,_,_),(_,alice,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([(_,_,_,_,_,italiano),(_,alice,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([(_,_,_,_,_,italiano),(_,_,_,_,_,_),(_,alice,_,_,_,_),(_,_,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([(_,_,_,_,_,italiano),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,alice,_,_,_,_),(_,taina,_,_,_,_)|_]).
dica11([_|Y]) :- dica11(Y).

% A mulher de 25 anos est� na quarta posi��o.
dica12(Pessoas) :- pessoa(4, Pessoas, (_,_,25,_,_,_)).

% Quem vai comer Ravi�li est� em algum lugar entre a mulher de 35 anos e quem vai comer Penne, nessa ordem.
dica13([(_,_,35,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,penne,_)|_]).
dica13([(_,_,35,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,_,_),(_,_,_,_,penne,_)|_]).
dica13([(_,_,35,_,_,_),(_,_,_,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,penne,_)|_]).
dica13([(_,_,35,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,penne,_)|_]).
dica13([(_,_,35,_,_,_),(_,_,_,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,_,_),(_,_,_,_,penne,_)|_]).
dica13([(_,_,35,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,ravioli,_),(_,_,_,_,penne,_)|_]).
dica13([_|Y]) :- dica13(Y).

% A mulher mais velha est� em algum lugar � direita da mulher da bolsa Verde.
dica14([(verde,_,_,_,_,_),(_,_,40,_,_,_)|_]).
dica14([(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,40,_,_,_)|_]).
dica14([(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,40,_,_,_)|_]).
dica14([(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,40,_,_,_)|_]).
dica14([_|Y]) :- dica14(Y).

% As mulheres que v�o beber o vinho Argentino est�o na segunda posi��o.
dica15(Pessoas) :- pessoa(2, Pessoas, (_,_,_,_,_,argentino)).

% Quem est� acompanhada da Irm� comer� Espaguete.
dica16([(_,_,_,irma,espaguete,_)|_]).
dica16([_|Y]) :- dica16(Y).

% Deise est� exatamente � direita da mulher mais nova.
dica17([(_,_,20,_,_,_),(_,deise,_,_,_,_)|_]).
dica17([_|Y]) :- dica17(Y).

% A dona da bolsa Verde est� em algum lugar entre Let�cia e quem vai beber o vinho Italiano, nessa ordem.
dica18([(_,leticia,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([(_,leticia,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([(_,leticia,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([(_,leticia,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([(_,leticia,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([(_,leticia,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica18([_|Y]) :- dica18(Y).

% Deise est� ao lado de quem est� acompanhada da Prima.
dica19([(_,_,_,prima,_,_),(_,deise,_,_,_,_)|_]).
dica19([(_,deise,_,_,_,_),(_,_,_,prima,_,_)|_]).
dica19([_|Y]):- dica19(Y).

% As mulheres que v�o beber o vinho Chileno est�o em uma das pontas.
dica20([(_,_,_,_,_,chileno),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_)|_]).
dica20([(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,chileno)|_]).
dica20([_|Y]) :- dica20(Y).

% Na terceira posi��o est�o as mulheres que v�o comer Capeletti.
dica21(Pessoas) :- pessoa(3, Pessoas, (_,_,_,_,capeletti,_)).

% A mulher da bolsa Verde est� em algum lugar entre a mulher de 35 anos e quem vai beber o vinho Italiano, nessa ordem.
dica22([(_,_,35,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([(_,_,35,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([(_,_,35,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([(_,_,35,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([(_,_,35,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([(_,_,35,_,_,_),(_,_,_,_,_,_),(_,_,_,_,_,_),(verde,_,_,_,_,_),(_,_,_,_,_,italiano)|_]).
dica22([_|Y]) :- dica22(Y).

resolver(Pessoas) :-
    pessoas(Pessoas),
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
    dica22(Pessoas),
    imprimir_lista(Pessoas).

imprimir_lista([]) :- write('\n\n        <<<<FIM>>>> \n\n').
imprimir_lista([X|Y]):-
    write('\n     ----------------------------\n'),
    write(' | '), write(X), write(' | '),
    imprimir_lista(Y).
