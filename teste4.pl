sala(a).
sala(b).
sala(c).

professor(aline).
professor(leonardo).
professor(marcos).
professor(karina).

materia(ia,aline).
materia(es,leonardo).
materia(visualizacao,marcos).
materia(arquitetura,karina).

equipamento(datashow).
equipamento(arcondicionado).
equipamento(luzes).
equipamento(computador).

usa(aline,datashow).
usa(aline,computador).
usa(aline,luzes).
usa(leonardo,datashow).
usa(leonardo,arcondicionado).
usa(leonardo,luzes).
usa(marcos,computador).
usa(marcos,arcondicionado).
usa(karina,datashow).

temperaturaar(leonardo,15).
temperaturaar(marcos,20).

aula(aline,a,7,9).
naoaula(a,9,11).
aula(leonardo,a,11,13).
aula(karina,c,9,11).
aula(marcos,b,11,13).


%ligarLuz(Sala)
can(ligarluz(Sala),[at(Professor,Sala),desligado(Sala,luzes)], sala) :- 
	aula(Professor,Sala,_,_),
	equipamento(luzes),
	usa(Professor,luzes).

adds(ligarluz(Sala),[ligado(Sala,luzes)],ligado(Sala,luzes), sala):-
	sala(Sala).

deletes(ligarluz(Sala),[desligado(Sala,luzes)], sala):-
	sala(Sala).

	
%desligarluz(Sala)
can(desligarluz(Sala),[ligado(Sala,luzes)], sala) :-
	aula(Professor,Sala,_,_),
	equipamento(luzes),
	not(usa(Professor,luzes)).
	
adds(desligarluz(Sala),[desligado(Sala,luzes)],desligado(Sala,luzes), sala):-
	sala(Sala).
		
deletes(desligarluz(Sala),[ligado(Sala,luzes)], sala) :-
	sala(Sala).
	
	
%ligararcondicionado(Sala)
can(ligararcondicionado(Sala),[at(Professor,Sala),desligado(Sala,arcondicionado)], sala) :- 
	aula(Professor,Sala,_,_),
	equipamento(arcondicionado),
	usa(Professor,arcondicionado).
	
adds(ligararcondicionado(Sala),[ligado(Sala,arcondicionado)],[ligado(Sala,arcondicionado)], sala):-
	aula(Professor,Sala,_,_),
	equipamento(arcondicionado),
	usa(Professor,arcondicionado).
	
deletes(ligararcondicionado(Sala),[desligado(Sala,arcondicionado)], sala):-
	sala(Sala).	

	
%desligararcondicionado(Sala)
can(desligararcondicionado(Sala),[ligado(Sala,arcondicionado)], sala) :-
	aula(Professor,Sala,_,_),
	equipamento(arcondicionado),
	not(usa(Professor,arcondicionado)).
	
adds(desligararcondicionado(Sala),[desligado(Sala,arcondicionado)],desligado(Sala,arcondicionado), sala) :-
	sala(Sala).
		
deletes(desligararcondicionado(Sala),[ligado(Sala,arcondicionado)], sala) :-
	sala(Sala).

	
%ajustararcondicionado(Sala)
% can(ajustararcondicionado(Sala),[at(Professor,Sala),ligado(Sala,arcondicionado),arajustado(N)], sala) :-
	% aula(Professor,Sala,_,_),
	% equipamento(arcondicionado),
	% usa(Professor,arcondicionado),
	% temperaturaar(Professor,Temperatura),
	% Temperatura\==N.
	
% adds(ajustararcondicionado(Sala),[arajustado(Temperatura)],[arajustado(Temperatura)], sala) :-
	% aula(Professor,Sala,_,_),
	% equipamento(arcondicionado),
	% usa(Professor,arcondicionado),
	% temperaturaar(Professor,Temperatura).

% deletes(ajustararcondicionado(Sala),[arajustado(N)],[arajustado(N)], sala) :-
	% aula(Professor,Sala,_,_),
	% equipamento(arcondicionado),
	% usa(Professor,arcondicionado),
	% temperaturaar(Professor,Temperatura),
	% Temperatura\==N.

%ligarcomputador(Sala)
can(ligarcomputador(Sala),[at(Professor,Sala),desligado(Sala,computador)], sala) :- 
	aula(Professor,Sala,_,_),
	equipamento(computador),
	usa(Professor,computador).
	
adds(ligarcomputador(Sala),[ligado(Sala,computador)],ligado(Sala,computador), sala):-
	sala(Sala).
	
deletes(ligarcomputador(Sala),[desligado(Sala,computador)], sala):-
	sala(Sala).	
	
	
%desligarcomputador(Sala)
can(desligarcomputador(Sala),[ligado(Sala,computador)], sala) :-
	aula(Professor,Sala,_,_),
	equipamento(computador),
	not(usa(Professor,computador)).
	
adds(desligarcomputador(Sala),[desligado(Sala,computador)],desligado(Sala,computador), sala):-
	sala(Sala).
		
deletes(desligarcomputador(Sala),[ligado(Sala,computador)], sala) :-
	sala(Sala).

	
%ligardatashow(Sala)
can(ligardatashow(Sala),[at(Professor,Sala),desligado(Sala,datashow)], sala) :- 
	aula(Professor,Sala,_,_),
	equipamento(datashow),
	usa(Professor,datashow).
	
adds(ligardatashow(Sala),[ligado(Sala,datashow)],ligado(Sala,datashow), sala):-
	sala(Sala).
	
deletes(ligardatashow(Sala),[desligado(Sala,datashow)], sala):-
	sala(Sala).	
	
	
%desligardatashow
can(desligardatashow(Sala),[ligado(Sala,datashow)], sala) :-
	aula(Professor,Sala,_,_),
	equipamento(datashow),
	not(usa(Professor,datashow)).
	
adds(desligardatashow(Sala),[desligado(Sala,datashow)],desligado(Sala,datashow), sala):-
	sala(Sala).
		
deletes(desligardatashow(Sala),[ligado(Sala,datashow)], sala) :-
	sala(Sala).

	
%preparar(sala)
%can(preparar(Sala),[at(Professor,uff),horario(N),aberto(Sala)],sala):-
%	%sala(Sala),
%	aula(Professor,Sala,N,_).
	
%adds(preparar(Sala),[at(Professor,Sala)],[at(Professor,Sala)],sala):-
%	%sala(Sala),
%	aula(Professor,Sala,_,_).	
	
%deletes(preparar(Sala),[at(Professor,uff),fechado(Sala)],sala) :-
%	%sala(Sala),
%	aula(Professor,Sala,_,_).

	
%daraula(avançar o horario, adicionar deuaula(Professor)).
can(daraula(Professor,Sala), [at(Professor,Sala),ligado(Sala,X),horario(N)],sala):-
	equipamento(X),
	usa(Professor, X),
	aula(Professor,Sala,N,_).

adds(daraula(Professor,Sala),[deuaula(Professor),horario(M)],[deuaula(Professor),horario(M)],sala):-
	aula(Professor,Sala,_,M).
	
deletes(daraula(Professor,Sala),[horario(N)],sala) :-	
	aula(Professor,Sala,N,_).
	

%abrirsala
can(abrirsala(Sala), [at(Professor,uff),horario(N),fechado(Sala)],sala):-
	aula(Professor,Sala,N,_).
	
adds(abrirsala(Sala),[at(Professor,Sala),aberto(Sala)],[at(Professor,Sala),aberto(Sala)],sala):-
	aula(Professor,Sala,_,_).
	
deletes(abrirsala(Sala),[at(Professor,uff),fechado(Sala)],sala) :-
	aula(Professor,Sala,_,_).
	
	
%fecharsala
can(fecharsala(Sala), [at(Professor,Sala),aberto(Sala)],sala):-
	professor(Professor),
	aula(Professor,Sala,_,_).
	
	%not(aula(Professor,Sala,N,_));
	%(aula(Professor,Sala,N,_), equipamento(X), not(usa(Professor,X))).
	
adds(fecharsala(Sala),[at(Professor,uff),fechado(Sala)],[fechado(Sala)],sala):-
	aula(Professor,Sala,_,_).	
	
deletes(fecharsala(Sala),[at(Professor,Sala),aberto(Sala)],sala) :-
	aula(Professor,Sala,_,_).
	
%passartempo
can(passartempo(Sala), [at(Professor,uff),horario(N)],sala):-
	naoaula(Sala,N,M),
	aula(Professor,Sala,_,N).	
	
adds(passartempo(Sala),[horario(M)],[horario(M)],sala):-
	naoaula(Sala,N,M).
	%aula(Professor,Sala,_,N).	
	
deletes(passartempo(Sala),[horario(N)],sala) :-
	naoaula(Sala,N,M).
	%aula(Professor,Sala,_,N).		

%preparaProximaaula	
can(preparaproximaaula(Sala), [horario(M),fechado(Sala),desligado(Sala,X)],sala):-
	professor(Professor),
	aula(Professor,Sala,M,_),
	equipamento(X),
	not(usa(Professor,X)).

adds(preparaproximaaula(Sala),[],[],sala):-
	aula(Professor,Sala,_,_).	

deletes(preparaproximaaula(Sala),[],sala) :-
	aula(Professor,Sala,_,_).	
	
test(P) :-
	plan([at(aline, uff), at(leonardo,uff),horario(7),fechado(a),sala(a),desligado(a,luzes)
	,desligado(a,arcondicionado), desligado(a,datashow),desligado(a,computador)]
	,[deuaula(aline),deuaula(leonardo),desligado(a,luzes),desligado(a,arcondicionado)
	, desligado(a,datashow),desligado(a,computador),fechado(a),horario(13)], sala,P).
		 
	%funcionando	 
	%testando o ligar luzes	 
test2(P) :-
	plan([at(aline, a),horario(7),fechado(a),sala(a),desligado(a,luzes)],
	     [ligado(a,luzes)], sala,P).
	%funcionando	 
test3(P) :-
	plan([at(aline, uff),horario(7),fechado(a),desligado(a,luzes),desligado(a,datashow),desligado(a,computador)],
	[at(aline,a),aberto(a),ligado(a,luzes),ligado(a,datashow),ligado(a,computador)], sala,P).
	%funcionando
test4(P) :-
	plan([at(aline, uff),horario(7),fechado(a),desligado(a,luzes),desligado(a,datashow),desligado(a,computador)],
	     [at(aline,uff),deuaula(aline), horario(9),fechado(a)], sala,P).
test5(P) :-
	plan([at(aline, uff),at(leonardo,uff),horario(7),fechado(a),desligado(a,luzes),desligado(a,datashow),desligado(a,computador)],
	     [at(aline,uff),at(leonardo,a),deuaula(aline),horario(11),aberto(a)], sala,P).
test6(P) :-
	plan([at(aline, uff),horario(7),fechado(a),ligado(a,luzes),ligado(a,datashow),ligado(a,computador)],
	     [at(aline,uff),deuaula(aline), horario(9),fechado(a)], sala,P).
		 
test7(P) :-
	plan([at(aline, uff),at(leonardo,uff),horario(7),fechado(a),desligado(a,luzes),desligado(a,datashow),desligado(a,arcondicionado)],
	     [at(aline,uff),at(leonardo,uff),deuaula(aline),deuaula(leonardo),horario(13),fechado(a)], sala,P).
		 
test8(P) :-
		plan([at(aline, uff),horario(7),fechado(a),desligado(a,luzes),desligado(a,datashow),desligado(a,computador)],
	     [at(aline,uff),deuaula(aline), horario(11),fechado(a)], sala,P).
		 
		 