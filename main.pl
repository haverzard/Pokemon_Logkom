/* Dynamic */
:- dynamic(mytokeInf/4).
:- dynamic(enemyInf/4).
:- dynamic(legend/3).
:- dynamic(legendInf/3).
:- dynamic(position/3).
:- dynamic(legend/3).
:- dynamic(boss/3).
:- dynamic(enemy/2).
:- dynamic(inbattleM/2).
:- dynamic(myposition/2).
:- dynamic(mytokemon/2).
:- dynamic(state/1).
:- dynamic(tokemonList/1).
:- dynamic(legendList/1).
:- dynamic(avaiGym/1).
:- dynamic(inbattleE/1).
:- dynamic(specIs/1).
:- dynamic(mute/1).
:- dynamic(loaddata/0).
:- include('song.pl').
:- include('frames.pl').
:- initialization(assertz(state(0))).
:- initialization(assertz(mute(0))).
:- initialization(playsong('theme',1)).
:- initialization(nl).
:- initialization(write('Use start/0 or loadGame/1 to start the game!')).
:- initialization(nl).

/* Deklarasi Fakta */
tokemon(dragostar,1).
tokemon(koadrill,2).
tokemon(chickath,3).
tokemon(hyenung,4).
tokemon(starphant,5).
tokemon(elenea,6).
tokemon(elecapi,7).
tokemon(herbecta,8).
tokemon(salamantis,9).
tokemon(thortoise,10).
tokemon(leolite,11).
tokemon(kanganyte,12).
tokemon(elephyle,13).
tokemon(jagairy,14).
tokemon(terrowing,15).
tokemon(chillplant,16).
tokemon(tikachu,17).
tokemon(earthium,18).
tokemon(bamboozle,19).
tokemon(quackal,20).
tokemon(salamax, 21).
tokemon(starpion, 22).
tokemon(blastoda, 23).
tokemon(melterpillar, 24).
tokemon(sheltopus, 25).
tokemon(chamecross, 26).
tokemon(flamitric, 27).
tokemon(leopanther, 28).
tokemon(flamephin, 29).
tokemon(toalix, 30).
tokemon(salamanax, 31).
tokemon(starpia, 32).
tokemon(blastidra, 33).
tokemon(merklepillar, 34).
tokemon(sheltopic, 35).
tokemon(chronocross, 36).
tokemon(flamotric, 37).
tokemon(neopanther, 38).
tokemon(flumepod, 39).
tokemon(trealix, 40).

type(dragostar, fire).
type(koadrill,fire).
type(chickath,fire).
type(hyenung,fire).
type(starphant,water).
type(elenea,water).
type(elecapi,water).
type(herbecta,water).
type(salamantis,grass).
type(thortoise,grass).
type(leolite,grass).
type(kanganyte,grass).
type(elephyle, rock).
type(jagairy, rock).
type(terrowing, wind).
type(chillplant,electric).
type(tikachu,electric).
type(earthium, rock).
type(bamboozle, wind).
type(quackal,wind).
type(salamax, rock).
type(starpion, water).
type(blastoda, rock).
type(melterpillar, grass).
type(sheltopus, water).
type(chamecross, wind).
type(flamitric, electric).
type(leopanther, rock).
type(flamephin, fire).
type(toalix, electric).
type(salamanax, rock).
type(starpia, water).
type(blastidra, rock).
type(merklepillar, grass).
type(sheltopic, water).
type(chronocross, wind).
type(flamotric, electric).
type(neopanther, rock).
type(flumepod, fire).
type(trealix, electric).
type(???, null).

type(dragaid, wind).
type(mountoon, rock).
type(voltron, electric).
type(magmoleon, fire).
type(quagadron, water).

specName(fire, 'fire blast').
specName(water, 'hydro pump').
specName(grass, 'leaf blade').
specName(rock, 'rock tomb').
specName(wind, 'sonic boom').
specName(electric, 'thunderbolt').
specName(null, 'spacial rend').

weak(fire, water).
weak(grass, fire).
weak(water, grass).
weak(water, electric).
weak(water, wind).
weak(rock, water).
weak(rock, grass).
weak(electric, rock).
weak(wind, electric).
weak(wind, fire).

evolve(salamax, salamanax).
evolve(starpion, starpia).
evolve(blastoda, blastidra).
evolve(melterpillar, merklepillar).
evolve(sheltopus, sheltopic).
evolve(chamecross, chronocross).
evolve(flamitric, flamotric).
evolve(leopanther, neopanther).
evolve(flamephin, flumepod).
evolve(toalix, trealix).

/* evolvelevel(nama tokemon sebelum evolve, level yang harus dicapai agar tokemon dapat evolve) */
evolvelevel(salamax, 23). 
evolvelevel(starpion, 25).
evolvelevel(blastoda, 22).
evolvelevel(melterpillar, 26).
evolvelevel(sheltopus, 28).
evolvelevel(chamecross, 21).
evolvelevel(flamitric, 24).
evolvelevel(leopanther, 25).
evolvelevel(flamephin, 27).
evolvelevel(toalix, 20).

/* Deklarasi Rule */
	/* power(A,B,X) benar, artinya X adalah nilai dari A pangkat B
		atau A*(A pangkat (B-1)) */
	/* Basis */
	power(A,1,A).
	/* Rekurens */
	power(A,B,X) :- B > 1, C is B-1, power(A,C,Z), X is Z*A, !.

	%***Tokemon Stats Section***%
	/* Basis */
	health(dragostar,140,1).
	health(koadrill,147,1).
	health(chickath,135,1).
	health(hyenung,141,1).
	health(starphant,152,1).
	health(elenea,143,1).
	health(elecapi,145,1).
	health(herbecta,139,1).
	health(salamantis,133,1).
	health(thortoise,144,1).
	health(leolite,138,1).
	health(kanganyte,150,1).
	health(elephyle,121,1).
	health(jagairy,119,1).
	health(terrowing,131,1).
	health(chillplant,127,1).
	health(tikachu,134,1).
	health(earthium,149,1).
	health(bamboozle,132,1).
	health(quackal,119,1).
	health(salamax,168, 1).
	health(starpion, 142, 1).
	health(blastoda, 176, 1).
	health(melterpillar, 135, 1).
	health(sheltopus, 153, 1).
	health(chamecross, 161, 1).
	health(flamitric, 183, 1).
	health(leopanther, 214, 1).
	health(flamephin, 197, 1).
	health(toalix, 189, 1).
	health(salamanax, 234, 1).
	health(starpia, 245, 1).
	health(blastidra, 254, 1).
	health(merklepillar, 238, 1).
	health(sheltopic, 249, 1).
	health(chronocross, 253, 1).
	health(flamotric, 258, 1).
	health(neopanther, 261, 1).
	health(flumepod, 233, 1).
	health(trealix, 239, 1).

	health(dragaid,242,1).
	health(mountoon,250,1).
	health(voltron,237,1).
	health(magmoleon,245,1).
	health(quagadron,245,1).
	health(???,99999,1).
	/* Rekurens */
	health(X,Y,L) :- L > 1, health(X,H,1), A is sqrt(1.25), power(A,L-1,B), Y is ceiling(H*B).

	/* Basis */
	exp(dragostar,72,1).
	exp(koadrill,85,1).
	exp(chickath,76,1).
	exp(hyenung,86,1).
	exp(starphant,93,1).
	exp(elenea,85,1).
	exp(elecapi,66,1).
	exp(herbecta,74,1).
	exp(salamantis,87,1).
	exp(thortoise,79,1).
	exp(leolite,82,1).
	exp(kanganyte,96,1).
	exp(elephyle,71,1).
	exp(jagairy,81,1).
	exp(terrowing,84,1).
	exp(chillplant,87,1).
	exp(tikachu,79,1).
	exp(earthium,83,1).
	exp(bamboozle,86,1).
	exp(quackal,68,1).
	exp(salamax, 73, 1).
	exp(starpion, 65, 1).
	exp(blastoda, 78, 1).
	exp(melterpillar, 80, 1).
	exp(sheltopus, 77, 1).
	exp(chamecross, 72, 1).
	exp(flamitric, 84, 1).
	exp(leopanther, 62, 1).
	exp(flamephin, 71, 1).
	exp(toalix, 81, 1).
	exp(salamanax, 121, 1).
	exp(starpia, 149, 1).
	exp(blastidra, 134, 1).
	exp(merklepillar, 151, 1).
	exp(sheltopic, 161, 1).
	exp(chronocross, 173, 1).
	exp(flamotric, 140, 1).
	exp(neopanther, 167, 1).
	exp(flumepod, 134, 1).
	exp(trealix, 131, 1).

	exp(dragaid,138,1).
	exp(mountoon,146,1).
	exp(voltron,143,1).
	exp(magmoleon,139,1).
	exp(quagadron,139,1).
	exp(???,999,1).
	/* Rekurens */
	exp(X,Y,L) :- L > 1, exp(X,E,1), A is sqrt(1.3), power(A,L-1,B), Y is ceiling(E*B).

	/* Basis */
	norm(dragostar,28,1).
	norm(koadrill,29,1).
	norm(chickath,32,1).
	norm(hyenung,27,1).
	norm(starphant,29,1).
	norm(elenea,26,1).
	norm(elecapi,27,1).
	norm(herbecta,28,1).
	norm(salamantis,29,1).
	norm(thortoise,26,1).
	norm(leolite,26,1).
	norm(kanganyte,25,1).
	norm(elephyle,24,1).
	norm(jagairy,23,1).
	norm(terrowing,21,1).
	norm(chillplant,24,1).
	norm(tikachu,23,1).
	norm(earthium,24,1).
	norm(bamboozle,23,1).
	norm(quackal,24,1).
	norm(salamax, 41, 1).
	norm(starpion, 38, 1).
	norm(blastoda, 27, 1).
	norm(melterpillar, 24, 1).
	norm(sheltopus, 35, 1).
	norm(chamecross, 34, 1).
	norm(flamitric, 25, 1).
	norm(leopanther, 35, 1).
	norm(flamephin, 21, 1).
	norm(toalix, 31, 1).
	norm(salamanax, 51, 1).
	norm(starpia, 56, 1).
	norm(blastidra, 59, 1).
	norm(merklepillar, 54, 1).
	norm(sheltopic, 58, 1).
	norm(chronocross, 59, 1).
	norm(flamotric, 60, 1).
	norm(neopanther, 50, 1).
	norm(flumepod, 53, 1).
	norm(trealix, 55, 1).

	norm(dragaid,65,1).
	norm(mountoon,52,1).
	norm(voltron,80,1).
	norm(magmoleon,64,1).
	norm(quagadron,54,1).
	norm(???,999,1).
	/* Rekurens */
	norm(X,Y,L) :- L > 1, norm(X,E,1), A is sqrt(1.23), power(A,L-1,B), Y is ceiling(E*B).

	/* Basis */
	spec(dragostar,47,1).
	spec(koadrill,45,1).
	spec(chickath,50,1).
	spec(hyenung,48,1).
	spec(starphant,46,1).
	spec(elenea,49,1).
	spec(elecapi,46,1).
	spec(herbecta,45,1).
	spec(salamantis,46,1).
	spec(thortoise,46,1).
	spec(leolite,48,1).
	spec(kanganyte,47,1).
	spec(elephyle,46,1).
	spec(jagairy,44,1).
	spec(terrowing,43,1).
	spec(chillplant,42,1).
	spec(tikachu,41,1).
	spec(earthium,43,1).
	spec(bamboozle,42,1).
	spec(quackal,44,1).
	spec(salamax, 47, 1).
	spec(starpion, 45, 1).
	spec(blastoda, 49, 1).
	spec(melterpillar, 54, 1).
	spec(sheltopus, 57, 1).
	spec(chamecross, 61, 1).
	spec(flamitric, 73, 1).
	spec(leopanther, 65, 1).
	spec(flamephin, 59, 1).
	spec(toalix, 69, 1).
	spec(salamanax, 100, 1).
	spec(starpia, 112, 1).
	spec(blastidra, 111, 1).
	spec(merklepillar, 110, 1).
	spec(sheltopic, 106, 1).
	spec(chronocross, 107, 1).
	spec(flamotric, 105, 1).
	spec(neopanther, 104, 1).
	spec(flumepod, 109, 1).
	spec(trealix, 101, 1).

	spec(dragaid,95,1).
	spec(mountoon,82,1).
	spec(voltron,120,1).
	spec(magmoleon,104,1).
	spec(quagadron,94,1).
	spec(???,999999,1).
	/* Rekurens */
	spec(X,Y,L) :- L > 1, spec(X,E,1), A is sqrt(1.25), power(A,L-1,B), Y is ceiling(E*B).
	
	%***Tokemon Stats Section End***%



	%***Main Section***%
	insertpokemon(X,L) :- 	health(X,Y,L),
							assertz(mytokemon(X,L)),
							assertz(mytokeInf(X,Y,0,L)),
							retract(tokemonList(Z)),
							append(Z,[X],Z2),
							assertz(tokemonList(Z2)),
							!.

	insertlegend(X,L,ID) :- 	health(X,Y,L),
								assertz(legend(X,L,ID)),
								assertz(legendInf(X,Y,L)),
								retract(legendList(Z)),
								append(Z,[X],Z2),
								assertz(legendList(Z2)),
								!.

	start :-	\+ state(0), write('Program has been started! Use quit/0 to quit the game!'), nl, !.
	start :-	randomize,
				assertz(tokemonList([])),
				assertz(legendList([])),
				assertz(avaiGym([])),
				assertz(boss(78,16,4)),
				assertz(boss(46,51,5)),
				insertpokemon(tikachu,5),
				insertlegend(dragaid,50,1),
				insertlegend(mountoon,75,2),
				insertlegend(voltron,90,3),
				insertlegend(magmoleon,100,4),
				insertlegend(quagadron,120,5),
				retract(state(0)),
				assertz(state(1)),
				loadmap,
				write('Note: Used songs are copyrighted and only uses for educational purposes'), nl, nl,
				write(' ____   _____   _  _   ____   __  __   _____   _  _ '), nl, flush_output, sleep(1),
				write('(_  _) (  _  ) ( )/ ) ( ___) (  \\/  ) (  _  ) ( \\( ) '), nl, flush_output, sleep(1),
				write('  )(    )(_)(   )  (   )__)   )    (   )(_)(   )  ( '), nl, flush_output, sleep(1),
				write(' (__)  (_____) (_)\\_) (____) (_/\\/\\_) (_____) (_)\\_)'), nl, flush_output, sleep(1),
				write('  ____   ____   _____    _     __     _____   ___ '), nl, flush_output, sleep(1),
				write(' (  _ \\ (  _ \\ (  _  )  ( )   (  )   (  _  ) / __) '), nl, flush_output, sleep(1),
				write('  )___/  )   /  )(_)(   /_\\/   )(__   )(_)( ( (_-. '), nl, flush_output, sleep(1),
				write(' (__)   (_)\\_) (_____) (__/\\  (____) (_____) \\___/'), nl, flush_output, sleep(1),
				nl, flush_output, sleep(1),
				write('Gotta catch \'em all!'), nl, flush_output, sleep(1),
				nl, flush_output, sleep(1),
				write('Yonatan: Hello there! Welcome to the world of Tokemon!'), nl, flush_output, sleep(1),
				write('Yonatan: My name is Yonatan! People call me the Solo Tokemon Professor!'), nl, flush_output, sleep(1),
				write('Yonatan: This world is inhabited by creatures called Tokemon!'), nl, flush_output, sleep(1),
				write('Yonatan: There are few of tokemons running around in K-3!'), nl, flush_output, sleep(1),
				write('Yonatan: You can catch them all to get stronger, or kill them to get stronger!'), nl, flush_output, sleep(1),
				write('Yonatan: But what I\'m really interested in are the 5 legendary skipper Tokemons,'), nl, flush_output, sleep(1),
				write('Yonatan: Dragaid, Mountoon, Voltron, Magmoleon, and Quagadron.'), nl, flush_output, sleep(1),
				write('Yonatan: If you can defeat or capture all those skipper Tokemons,'), nl, flush_output, sleep(1),
				write('Yonatan: I will grant you the tokemon champion title.'), nl, flush_output, sleep(1),
				stopsong,
				playsong('gamesong',1),
				nl,
				help, !.

	quit :- state(0), err_nostart, !.
	quit :- state(2), err_onencounter, !.
	quit :- state(3), err_onpick, !.
	quit :- state(4), err_onbattle, !.
	quit :- state(5), err_oncapture, !.
	quit :- state(1),
			stopsong,
			playsong('theme',1),
			retractall(mytokemon(_,_)),
			retractall(mytokeInf(_,_,_,_)),
			retractall(legend(_,_,_)),
			retractall(legendInf(_,_,_)),
			retractall(position(_,_,_)),
			retractall(myposition(_,_)),
			retractall(tokemonList(_)),
			retractall(legendList(_)),
			retractall(avaiGym(_)),
			retractall(boss(_,_,_)),
			retract(state(1)),
			assertz(state(0)),
			write('Yonatan: Goodbye player....'), nl, !.

	win :- 	state(6),
			stopsong,
			playsong('ending',0),
			write('Yonatan: HELLO!?!? WAKE UP!!!'), nl, flush_output, sleep(2),
			write('Yonatan: What?! You meet another legendary tokemon in your dream?'), nl, flush_output, sleep(2),
			write('Yonatan: Hmm... That\'s new. I will do some more researches about it later.'), nl, flush_output, sleep(2),
			write('Yonatan: Anyway, congratulations player! Here is your champion title!'), nl, flush_output, sleep(2),
			write('================================'), nl, flush_output, sleep(2),
			write('=      *TOKEMON CHAMPION*      ='), nl, flush_output, sleep(2),
			write('================================'), nl, flush_output, sleep(2),
			write('= NAME     : Player 101        ='), nl, flush_output, sleep(2),
			write('= HOMETOWN : From K-3          ='), nl, flush_output, sleep(2),
			write('================================'), nl, flush_output, sleep(2),
			nl, flush_output, sleep(2),
			write('****************CREDITS****************'), nl, flush_output, sleep(2),
			nl, flush_output, sleep(2),
			write('        TOKEMON ADVENTURE      '), nl, flush_output, sleep(2),
			nl, flush_output, sleep(1),
			write('Deklarasi Fakta  - Bagas, Dimas, Vincent, Yonatan'), nl, flush_output, sleep(2),
			write('Deklarasi Aturan - Yonatan'), nl, flush_output, sleep(2),
			write('Story            - Vincent, Yonatan'), nl, flush_output, sleep(2),
			nl, flush_output, sleep(2),
			nl, flush_output, sleep(2),
			write('All musics are copyrighted'), nl, flush_output, sleep(2),
			write('and used for educational/private uses only'), nl, flush_output, sleep(2),
			nl, flush_output, sleep(2),
			write('Thanks for Playing!'), nl, flush_output, sleep(2),
			stopsong,
			playsong('theme',1),
			retractall(mytokemon(_,_)),
			retractall(mytokeInf(_,_,_,_)),
			retractall(legend(_,_,_)),
			retractall(legendInf(_,_,_)),
			retractall(position(_,_,_)),
			retractall(myposition(_,_)),
			retractall(tokemonList(_)),
			retractall(legendList(_)),
			retractall(avaiGym(_)),
			retractall(boss(_,_,_)),
			retract(state(6)),
			assertz(state(0)).

	help :-		write('Available commands: '), nl,
				write('   start. -- start the game! '), nl,
				write('   help. -- show available commands '), nl,
				write('   quit. -- quit the game '), nl,
				write('   n. s. e. w. -- move '), nl,
				write('   map. -- look at the map '), nl,
				write('   heal -- cure Tokemon in inventory if in gym center '), nl,
				write('   drop(Tokemon) -- remove tokemon from your party '), nl,
				write('   status. -- show your status '), nl,
				write('   saveGame(Filename). -- save your game '), nl,
				write('   loadGame(Filename). -- load previously saved game'), nl,
				write('   mute. -- mute music sound (linux only)'), nl,
				write('   unmute. -- unmute music sound (linux only)'), nl,
				write('   exit. -- exit prolog'), nl,
				nl,
				write('Legends: '), nl,
				write('  - X = Fence '), nl,
				write('  - P = Player'), nl,
				write('  - o = Rock'), nl,
				write('  - ~ = Lava/Water'), nl,
				write('  - @ = Legendary'), nl,
				write('  - w = Grass'), nl,
				write('  - G = Gym'), nl,
				nl.

	mute :- retract(mute(0)), assertz(mute(1)), stopsong2.
	unmute :- retract(mute(1)), assertz(mute(0)), retract(song(X)), playsong(X,1).
	exit :- (mute; 1=1), halt.

	%***Main Section End***%



	%***State Handling Section***%
	saveTokemon(X,L,Str) :- write(Str,'assertz(mytokemon('), write(Str,X), write(Str,','), write(Str,L), write(Str,')),\n'), 
							mytokeInf(X,Y,E,L),
							write(Str,'assertz(mytokeInf('), 
							write(Str,X), write(Str,','), 
							write(Str,Y), write(Str,','), 
							write(Str,E), write(Str,','), 
							write(Str,L), write(Str,')),\n').
	saveLegend(X,L,ID,Str) :- 	write(Str,'assertz(legend('), write(Str,X), write(Str,','), 
								write(Str,L), write(Str,','), write(Str,ID), write(Str,')),\n'), 
								legendInf(X,Y,L),
								write(Str,'assertz(legendInf('), 
								write(Str,X), write(Str,','), 
								write(Str,Y), write(Str,','), 
								write(Str,L), write(Str,')),\n').
	saveBoss(X,Y,ID,Str) :- 	write(Str,'assertz(boss('), write(Str,X), write(Str,','), 
								write(Str,Y), write(Str,','), write(Str,ID), write(Str,')),\n').

	saveGame(X) :- 	var(X), err_usingvar, !.						
	saveGame(_) :- 	state(0), err_nostart, !.
	saveGame(_) :- 	state(2), err_onencounter, !.
	saveGame(_) :- 	state(3), err_onpick, !.
	saveGame(_) :- 	state(4), err_onbattle, !.
	saveGame(_) :- 	state(5), err_oncapture, !.
	saveGame(Filename) :- 	state(1),
							atom_concat(Filename,'.pl', F),
							open(F,write,Str), 
							write(Str,'loaddata :-\n'), 
							myposition(X,Y),
							write(Str,'assertz(myposition('), write(Str,X), write(Str,','), write(Str,Y), write(Str,')),\n'), 
							tokemonList(Tl), 
							write(Str,'assertz(tokemonList('), write(Str,Tl), write(Str,')),\n'),
							legendList(Ll), 
							write(Str,'assertz(legendList('), write(Str,Ll), write(Str,')),\n'),
							avaiGym(Ag), 
							write(Str,'assertz(avaiGym('), write(Str,Ag), write(Str,')),\n'),
							forall(mytokemon(A1,B1), saveTokemon(A1,B1,Str)),
							forall(legend(A2,B2,ID), saveLegend(A2,B2,ID,Str)),
							forall(boss(A3,B3,ID2), saveBoss(A3,B3,ID2,Str)),
							write(Str,'!.'),
							close(Str),			
							write('Yonatan: Your game has been saved!'), nl.

	loadGame(X) :- 	var(X), err_usingvar, !.
	loadGame(_) :- 	state(1), write('Program has been started, can\'t load the game! Use quit/0 to quit the game!'), nl, !.
	loadGame(_) :- 	state(2), err_onencounter, !.
	loadGame(_) :- 	state(3), err_onpick, !.
	loadGame(_) :- 	state(4), err_onbattle, !.
	loadGame(_) :- 	state(5), err_oncapture, !.
	loadGame(Filename) :- 	state(0),
							stopsong,
							playsong('gamesong',1),
							consult(Filename),
							randomize,
							loadmap,
							retractall(myposition(_,_)),
							loaddata, 
							write('Yonatan: Your load file has been loaded!'), nl,
							retract(state(0)),
							assertz(state(1)),
							nl,
							help, !.

	%***State Handling Section End***%



	%***Error Handling Section***%
	err_nostart :- write('Program hasn\'t been started yet! Use start/0 to start!'), nl.

	err_onencounter :- write('A Tokemon has ambushed you, choose run/0 or fight/0!'), nl.

	err_onbattle :- write('You\'re in a battle, choose attack/0 or specialAttack/0!'), nl.

	err_onpick :- write('Choose a tokemon for the battle with pick/1!'), nl.

	err_oncapture :- write('You can capture a tokemon now! Use capture/0 or just move to run!'), nl.

	err_usingvar :- write('Don\'t use a variable as your input! Use a constant!'), nl.

	%***Error Handling Section End**%



	%***Tokemon Handling Section***%
	drop(X) :-	var(X), err_usingvar, !.
	drop(_) :- 	state(0), err_nostart, !.
	drop(_) :- 	state(2), err_onencounter, !.
	drop(_) :- 	state(3), err_onpick, !.
	drop(_) :- 	state(4), err_onbattle, !.
	drop(_) :- 	state(1), tokemonList(L), length(L,X), X = 1, !.
	drop(X) :- 	(state(1); state(5)),
				retract(mytokemon(X,_)),
				retractall(mytokeInf(X,_,_,_)),
				retract(tokemonList(L)),
				delete(L,X,L2),
				assertz(tokemonList(L2)),
				write('Say Goodbye to your pokemon....'), nl, !.
	drop(_) :- 	write('You don\'t have that tokemon!'), nl.

	healall :- 	mytokemon(X,L),
				health(X,Y,L),
				retract(mytokeInf(X,_,E,L)),
				assertz(mytokeInf(X,Y,E,L)).

	heal :- state(0), err_nostart, !.
	heal :- state(2), err_onencounter, !.
	heal :- state(3), err_onpick, !.
	heal :- state(4), err_onbattle, !.
	heal :- state(1),
			myposition(X,Y), position(X,Y,C), \+ C = 'G', 
			write('You are not on a gym location! You can\'t heal!'), !.
	heal :- state(1), 
			myposition(X,Y), avaiGym(Ag), member([X,Y],Ag), delete(Ag,[X,Y],Ag2),
			stopsong,
			playsong('heal',0),  sleep(3),
			retract(avaiGym(Ag)), assertz(avaiGym(Ag2)),
			write('Your party has been healed!'), healall, 
			stopsong,
			playsong('pokecenter',1), 
			!, fail.
	heal :- state(1),
			write('You have used this gym before! Try to find another gym!').

	%***Tokemon Handling Section End***%

	%***Interface Handling Section***%
	show(X,L,Y,Z,E) :- mytokeInf(X,Y,E,L), type(X,Z), !.
	showE(X,L,Y,Z,_) :- legendInf(X,Y,L), type(X,Z), !.
	showE(X,L,Y,Z,E) :- enemyInf(X,Y,E,L), type(X,Z), !.

	showexp(X,L,E) :- 	exp(X,MaxExp,L), N is ceiling(E*10/MaxExp),
						forall(between(1,N,_),write('X')),
						N2 is 10-N,
						forall(between(1,N2,_),write('_')).
	
	showtokemon(X) :- 	show(X,L,Y,Z,E),
						write('Your Tokemon:'), nl,
						tokeName(X), nl,
						write('Level  : '), write(L), nl,
						write('Health : '), write(Y), write('/'), health(X,Y2,L), write(Y2), nl,
						write('Type   : '), write(Z), nl, 
						write('EXP    : '), nl,
						write('|||'), showexp(X,L,E), write('/'), nl,
						nl.

	showenemy(X) :- 	showE(X,L,Y,Z,_),
						write('Your Enemy:'), nl,
						tokeName(X), nl,
						write('Level  : '), write(L), nl,
						write('Health : '), write(Y), write('/'), health(X,Y2,L), write(Y2), nl,
						write('Type   : '), write(Z), nl,
						nl.
	
	tokeName(X) :- 	sub_atom(X,0,1,_,X1),
					sub_atom(X,1,_,0,X2),
					lower_upper(X1,X3),
					write(X3), write(X2).

	status :- 	state(0), err_nostart, !.
	status :- 	\+ state(0),
				tokemonList(Tl),
				forall(member(X,Tl),showtokemon(X)),
				legendList(Ll),
				forall(member(Y,Ll),showenemy(Y)).

	%***Interface Handling Section End***%



	%***Battle Handling Section***%
	randomRun(X) :- random(1,11,C), (C = 1; C = 3; C = 4; C = 5; C = 6; C = 7; C = 8; C= 9), nl, X = 'Y', !.
	randomRun(X) :- X = 'N', !.

	run :- 	state(0), err_nostart, !.
	run :- 	state(3), err_onpick, !.
	run :- 	state(4), err_onbattle, !.
	run :- 	\+ state(2), write('You are not ambushed by any tokemon!'), nl, !.
	run :-	state(2),
			randomRun(X), 
			X = 'Y', 
			retract(state(2)), 
			assertz(state(1)), 
			retract(inbattleE(E)), 
			retractall(specIs(_)),
			(legend(E,_,_), !; retract(enemy(E,_)), retract(enemyInf(E,_,_,_))), 
			stopsong,
			playsong('gamesong',1),
			write('You successfully escaped the Tokemon!'), nl, !.
	run :-	state(2), write('You failed to run!'), nl, fight.
	
	randomEncounter(X) :- random(1,11,C), (((C = 1; C = 3; C = 5), nl, X = 'N'), !; (C = 7, X = 'L')), !.
	randomEncounter(X) :- X = 'X'.
	
	checkEncounter :- 	randomEncounter(X),
						(X = 'L', (legend(_,_,1); legend(_,_,2); legend(_,_,3)), repeat, random(1,4,B), legend(P,L,B), nl,
							write('The legendary '), tokeName(P), write(' level '), write(L), write(' has appeared!'), 
							stopsong,
							playsong('lbattlesong',1),!; 
							X = 'N', random(1,41,B), tokemon(P,B), random(1,101,L), 
							health(P,Z,L),
							assertz(enemy(P,L)),
							assertz(enemyInf(P,Z,0,L)), 
							write('A wild '), tokeName(P), write(' level '), write(L), write(' has appeared!'),
							stopsong,
							playsong('battlesong',1), !; 
							X = 'X', fail),
						assertz(inbattleE(P)), assertz(specIs(avaiE)), retract(state(1)), assertz(state(2)),  nl, write('fight/0 or run/0?'), nl, !.
	encounter(P) :-	(legend(P,L,_), write('The legendary '), tokeName(P), write(' level '), write(L), write(' has appeared!'), 
					stopsong,
					playsong('lbattlesong',1),!;
					random(1,101,L), 
					health(P,Z,L),
					assertz(enemy(P,L)),
					assertz(enemyInf(P,Z,0,L)), 
					write('A wild '), tokeName(P), write(' level '), write(L), write(' has appeared!'),
					stopsong,
					playsong('battlesong',1)),
					assertz(inbattleE(P)), assertz(specIs(avaiE)), retract(state(1)), assertz(state(2)),  nl, write('fight/0 or run/0?'), nl.
	fight :- 	state(0), err_nostart, !.
	fight :- 	state(3), err_onpick, !.
	fight :- 	state(4), err_onbattle, !.
	fight :- 	\+ state(2), write('You are not ambushed by any tokemon!'), nl, !.
	fight :- 	retract(state(2)), 
				assertz(state(3)), 
				write('Choose a tokemon!'), nl,
				write('Available Tokemons: '), tokemonList(L), write(L), nl.
	
	pick(X) :- var(X), err_usingvar, !.
	pick(_) :- state(0), err_nostart, !.
	pick(_) :- state(2), err_onencounter, !.
	pick(_) :- state(4), err_onbattle, !.
	pick(_) :- \+ state(3), write('You are not going into any battle!'), nl, !.
	pick(X) :- 	state(3), 
				mytokemon(X,L),
				playsong('pokemonout',0),
				write('You :  "'), tokeName(X), write(', I choose You!"'), nl, flush_output, sleep(2),
				assertz(inbattleM(X,L)), 
				showtokemon(X), 
				inbattleE(A), 
				showenemy(A), 
				assertz(specIs(avai)), 
				retract(state(3)),
				assertz(state(4)),!.
	pick(_) :- state(3), write('You don\'t have that Tokemon!').

	attack :- 	state(0), err_nostart, !.
	attack :- 	state(2), err_onencounter, !.
	attack :- 	state(3), err_onpick, !.
	attack :- 	\+ state(4), write('You are not on battle!'), nl, !.
	attack :- 	state(4),
				inbattleE(E), 
				inbattleM(X,L), 
				norm(X,D,L), 
				legend(E,L2,_), legendInf(E,Y,L2), retract(legendInf(E,Y,L2)), B is Y-D, 
				playsong('tackle',0),
				(B < 0, assertz(legendInf(E,0,L2)), !; assertz(legendInf(E,B,L2))), !, 
				write('You dealt '), write(D), write(' damage to '), tokeName(E), nl, flush_output, sleep(2),
				nl, flush_output, sleep(2),
				(checkDeathE, showtokemon(X), showenemy(E), enDeath, !;
				randomEnemyAttack, showtokemon(X), showenemy(E), (checkDeath, myDeath; 1=1), fail), !.
	attack :- 	state(4),
				inbattleE(E), 
				inbattleM(X,L), 
				norm(X,D,L), 
				enemy(E,L2), enemyInf(E,Y,0,L2), retract(enemyInf(E,Y,0,L2)), B is Y-D, 
				playsong('tackle',0),
				(B < 0, assertz(enemyInf(E,0,0,L2)), !; assertz(enemyInf(E,B,0,L2))), !, 
				write('You dealt '), write(D), write(' damage to '), tokeName(E), nl, flush_output, sleep(2),
				nl, flush_output, sleep(2),
				(checkDeathE, showtokemon(X), showenemy(E), enDeath, !; 
				randomEnemyAttack, showtokemon(X), showenemy(E), (checkDeath, myDeath; 1=1), fail).

	specASong(X) :- 	type(X,A), specName(A,N), N = 'fire blast', playsong('fireblast',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'hydro pump', playsong('hydropump',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'leaf blade', playsong('leafblade',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'sonic boom', playsong('sonicboom',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'rock tomb', playsong('rocktomb',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'thunderbolt', playsong('thunderbolt',0), !.
	specASong(X) :- 	type(X,A), specName(A,N), N = 'spacial rend', playsong('spacialrend',0).
	specialAttack :- 	state(0), err_nostart, !.
	specialAttack :- 	state(2), err_onencounter, !.
	specialAttack :- 	state(3), err_onpick, !.
	specialAttack :- 	\+ state(4), write('You are not on battle!'), nl, !.
	specialAttack :- 	state(4),
						\+ specIs(avai), write('Special attacks can only be used once per battle!'), nl, !.
	specialAttack :-  	state(4),
						specIs(avai), 
						inbattleE(E), 
						inbattleM(X,L), 
						spec(X,D,L), 
						legend(E,L2,_), legendInf(E,Y,L2), retract(legendInf(E,Y,L2)), 
						specASong(X),
						tokeName(X), write(' uses '), type(X,A), specName(A,N), write(N), write('!'), nl, sleep(2),
						(type(X,T1), type(E,T2), weak(T2,T1), write('It\'s super effective!'), nl, B is round(Y-(D*1.5)), D2 is round(D*1.5), !;
							type(X,T1), type(E,T2), weak(T1,T2), write('It\'s not effective!'), nl, B is round(Y-(D*0.5)), D2 is round(D*0.5), !; 
							B is Y-D, D2 is D),   
						(B < 0, assertz(legendInf(E,0,L2)), !; assertz(legendInf(E,B,L2))), 
						retract(specIs(avai)), !, 
						write('You dealt '), write(D2), write(' damage to '), tokeName(E), nl, flush_output, sleep(2),
						nl, flush_output, sleep(2),
						(checkDeathE, showtokemon(X), showenemy(E), enDeath, !;
						randomEnemyAttack, showtokemon(X), showenemy(E), (checkDeath, myDeath; 1=1), fail), !.
	specialAttack :-  	state(4),
						specIs(avai), 
						inbattleE(E), 
						inbattleM(X,L), 
						spec(X,D,L), 
						enemy(E,L2), enemyInf(E,Y,0,L2), retract(enemyInf(E,Y,0,L2)),
						specASong(X),
						tokeName(X), write(' uses '), type(X,A), specName(A,N), write(N), write('!'), nl, sleep(2),
						(type(X,T1), type(E,T2), weak(T2,T1), write('It\'s super effective!'), nl, B is round(Y-(D*1.5)), D2 is round(D*1.5), !;
							type(X,T1), type(E,T2), weak(T1,T2), write('It\'s not effective!'), nl, B is round(Y-(D*0.5)), D2 is round(D*0.5), !; 
							B is Y-D, D2 is D),   
						(B < 0, assertz(enemyInf(E,0,0,L2)), !; assertz(enemyInf(E,B,0,L2))), 
						retract(specIs(avai)), !, 
						write('You dealt '), write(D2), write(' damage to '), tokeName(E), nl, flush_output, sleep(2),
						nl, flush_output, sleep(2),
						(checkDeathE, showtokemon(X), showenemy(E), enDeath, !; 
						randomEnemyAttack, showtokemon(X), showenemy(E), (checkDeath, myDeath; 1=1), fail).

	randomEnemyAttack :- 	random(1,11,A), 
							(A = 5, specIs(avaiE), enemySAttack, !; 
								(A = 1; A = 2; A = 3), !; 
								enemyAttack).

	enemyAttack :- 	inbattleE(E), 
					inbattleM(X,L), 
					legend(E,L2,_), 
					norm(E,D,L2), 
					(E = ???, animateAttack, playsong('superpower',0), !;
					playsong('tackle',0)),
					tokeName(E), write(' dealt '), write(D), write(' damage to '), tokeName(X), nl, flush_output, sleep(2),
					nl, flush_output, sleep(2),
					mytokeInf(X,Y,Ex,L), retract(mytokeInf(X,Y,Ex,L)), B is Y-D, 
					(B < 0, assertz(mytokeInf(X,0,Ex,L)), !; 
						assertz(mytokeInf(X,B,Ex,L))), !. 
	enemyAttack :- 	inbattleE(E),
					inbattleM(X,L), 
					enemy(E,L2), 
					norm(E,D,L2), 
					playsong('tackle',0),
					tokeName(E), write(' dealt '), write(D), write(' damage to '), tokeName(X), nl, flush_output, sleep(2),
					nl, flush_output, sleep(2),
					mytokeInf(X,Y,Ex,L), retract(mytokeInf(X,Y,Ex,L)), B is Y-D, 
					(B < 0, assertz(mytokeInf(X,0,Ex,L)), !; 
						assertz(mytokeInf(X,B,Ex,L))). 

	enemySAttack :- 	inbattleE(E), 
						inbattleM(X,L), 
						legend(E,L2,_), 
						spec(E,D,L2), 
						(E = ???, animateSAttack, !;
						1=1),
						specASong(E),
						mytokeInf(X,Y,Ex,L), retract(mytokeInf(X,Y,Ex,L)),
						tokeName(E), write(' uses '), type(E,A), specName(A,N), write(N), write('!'), nl, sleep(2),
						(type(X,T1), type(E,T2), weak(T1,T2), write('It\'s super effective!'), nl, B is round(Y-(D*1.5)), D2 is round(D*1.5), !; 
							type(X,T1), type(E,T2), weak(T2,T1), write('It\'s not effective!'), nl, B is round(Y-(D*0.5)), D2 is round(D*0.5), !; 
							B is Y-D, D2 is D), 
						tokeName(E), write(' dealt '), write(D2), write(' damage to '), tokeName(X), nl, sleep(2),
						nl, sleep(2),
						(B < 0, assertz(mytokeInf(X,0,Ex,L)), !; 
							assertz(mytokeInf(X,B,Ex,L))), nl, 
						retract(specIs(avaiE)), !. 
	enemySAttack :- 	inbattleE(E), 
						inbattleM(X,L), 
						enemy(E,L2), 
						spec(E,D,L2), 
						specASong(E),
						mytokeInf(X,Y,Ex,L), retract(mytokeInf(X,Y,Ex,L)),
						tokeName(E), write(' uses '), type(E,A), specName(A,N), write(N), write('!'), nl, sleep(2),
						(type(X,T1), type(E,T2), weak(T1,T2), write('It\'s super effective!'), nl, B is round(Y-(D*1.5)), D2 is round(D*1.5), !; 
							type(X,T1), type(E,T2), weak(T2,T1), write('It\'s not effective!'), nl, B is round(Y-(D*0.5)), D2 is round(D*0.5), !; 
							B is Y-D, D2 is D), 
						tokeName(E), write(' dealt '), write(D2), write(' damage to '), tokeName(X), nl, sleep(2),
						nl, sleep(2),
						(B < 0, assertz(mytokeInf(X,0,Ex,L)), !; 
							assertz(mytokeInf(X,B,Ex,L))), nl, 
						retract(specIs(avaiE)). 

	giveExp :- 	inbattleE(E), 
				inbattleM(X,L), retract(inbattleM(X,L)),
				(legend(E,L2,_), !; enemy(E,L2)),
				exp(E,Ex,L2),
				mytokeInf(X,Y,Ex2,L), retract(mytokeInf(X,Y,Ex2,L)), Exx is ceiling(Ex*0.8), Ex3 is Ex2+Exx,
				exp(X,Ex4,L),
				tokeName(X), write(' gained '), write(Exx), write(' experience points'), nl, flush_output, sleep(1),
				(Ex3 > Ex4, L3 is L+1, assertz(mytokeInf(X,Y,0,L3)), retract(mytokemon(X,L)), assertz(mytokemon(X,L3)),
					tokeName(X), write(' just leveled up!'), nl, flush_output, sleep(1),
					(evolve(X,X2), 
						evolvelevel(X,L4),
						L3 >= L4, 
						stopsong,
						playsong('evolution',0),
						tokeName(X), write(' is evolving!'), nl, flush_output, sleep(1),
						retract(mytokemon(X,L3)), 
						assertz(mytokemon(X2,L3)), 
						retract(mytokeInf(X,Y,0,L3)),
						health(X2,Y2,L3),
						assertz(mytokeInf(X2,Y2,0,L3)),
						retract(tokemonList(Tl)),
						delete(Tl,X,Tl2),
						append(Tl2,[X2],Tl3),
						assertz(tokemonList(Tl3)),
						sleep(5),
						stopsong,
						playsong('evolution_done',0),
						tokeName(X), write(' just evolved into '), tokeName(X2), nl, flush_output, sleep(3), !; 1=1), !; 
					assertz(mytokeInf(X,Y,Ex3,L))).

	captureChance :-	inbattleE(E), 
						(mytokemon(E,_), !; evolve(E,E2), mytokemon(E2,_), !; evolve(E3,E), mytokemon(E3,_)),
						retract(inbattleE(E)), retractall(specIs(_)),
						(legend(E,L2,ID), retract(legend(E,L2,ID)), 
							retract(legendList(L)), delete(L,E,L3), assertz(legendList(L3)), !; 
							enemy(E,L2), retract(enemy(E,L2))), 
						retract(state(5)), assertz(state(1)),!.
	captureChance :-	inbattleE(E), tokeName(E), 
						write(' faints! Do you want to capture '), tokeName(E), write('? (capture/0 to capture '), tokeName(E),write(', otherwise move away.'), !.

	capture :- 	state(0), err_nostart, !.
	capture :- 	state(2), err_onencounter, !.
	capture :- 	state(3), err_onpick, !.
	capture :- 	state(4), err_onbattle, !.
	capture :- 	\+ state(5), write('There is no tokemon to capture!'), nl, !.
	capture :- 	state(5), tokemonList(L), length(L,X), X = 6, 
				write('You cannot capture another Tokemon! You have to drop one first.'), !.
	capture :-	state(5), random(1,3,A), inbattleE(E),
				playsong('throwpokeball',0), sleep(3),
				retract(inbattleE(E)), retractall(specIs(_)),
				(legend(E,L,ID), retract(legend(E,L,ID)), retract(legendInf(E,_,L)), 
					retract(legendList(Ll)), delete(Ll,E,Ll2), assertz(legendList(Ll2)), !; 
					enemy(E,L), retract(enemy(E,L)), retract(enemyInf(E,_,_,L))), 
				tokeName(E), 
				(A = 1, insertpokemon(E,L), write(' is captured!'), !; write(' got away...')), nl, 
				retract(state(5)), assertz(state(1)), fail.

	checkDeath :-	inbattleM(X,L), mytokeInf(X,Y,_,L), Y = 0.
	checkDeathE :-	inbattleE(E), legendInf(E,Y,_), !, Y = 0.
	checkDeathE :-	inbattleE(E), enemyInf(E,Y,_,_), Y = 0.

	enDeath :- 	retract(state(4)), assertz(state(5)), 
				stopsong,
				playsong('victory',0),
				sleep(3),
				giveExp,
				(inbattleE(E), legend(E,_,_), legendList(Ll), length(Ll,A), A = 1, 
					retract(inbattleE(E)), retractall(specIs(_)), retract(state(5)), assertz(state(6)), 
					(E = ???, win, !; retract(legendList(Ll)), delete(Ll,E,Ll2), assertz(legendList(Ll2)), finalBoss), !; 
					(inbattleE(E), legend(E,_,ID), boss(X,Y,ID), retract(boss(X,Y,ID)), !; 1=1),
					stopsong,
					playsong('gamesong',1),
					captureChance).

	myDeath :- 	tokemonList(Tl), length(Tl,A), A = 1,
				assertz(dummy(0)),
				repeat, retract(dummy(X)), write('.'), flush_output, sleep(1), X2 is X+1, assertz(dummy(X2)), X2 = 3,
				nl, retract(dummy(3)),
				stopsong,
				write('EKUSUPUROSHION!'), nl, flush_output, sleep(1),
				write('Yonatan: Well, well, well... I see that you don\'t really take this seriously!'), nl, flush_output, sleep(1),
				write('Yonatan: You lose all your tokemons from that battle...'), nl, flush_output, sleep(1),
				write('Yonatan: I think you are not capable to become a tokemon champion.'), nl, flush_output, sleep(1),
				playsong('theme',1), flush_output, sleep(1),
				retract(state(4)), assertz(state(1)), 
				retractall(specIs(_)), 
				retract(inbattleM(_,_)), 
				retract(inbattleE(E)), 
				(retract(legend(E,L2,_)), !; 
					retract(enemy(E,L2)), retract(enemyInf(E,_,_,L2))), 
				quit, !.
	myDeath :- 	playsong('pokemonin',0),
				inbattleM(X,L), tokeName(X), write(' fainted...'), nl, retract(state(4)), assertz(state(1)), 
				retract(inbattleM(X,L)), drop(X), 
				(retract(specIs(avai)); 1=1),
				assertz(specIs(avai)),
				retract(state(1)), assertz(state(2)), fight, !.

	%***Battle Handling Section End***%



	%***Movement Handling Section***%
	grassOrNot :-	myposition(X,Y), position(X,Y,C),
					C = 'G', 
					stopsong,
					playsong('pokecenter',1), !.
	grassOrNot :- 	myposition(X,Y), position(X,Y,@),
					boss(X,Y,ID), legend(P,_,ID), encounter(P), !.
	grassOrNot :- 	myposition(X,Y), position(X,Y,C),
					C = 'w', checkEncounter.

	move(_,X,Y) :- 	retract(myposition(A,B)),
					V is A+X*2, W is B+Y, 
					(((V < 0; V > 113; W < 0; W > 55); position(V,W,C), \+ (C = 'w'; C = (-); C = 'G'; C = @)), 
						assertz(myposition(A,B)), 
						write('Movement is not doable!'), nl, !; 
						assertz(myposition(V,W)), 
						position(A,B,C2), C2 = 'G',
						stopsong,
						playsong('gamesong',1),
						fail).
	move(_,_,_) :- map.
	move(_,_,_) :- write('You are moving '), fail.
	move(A,_,_) :- 	A = 's', write('south.'), nl, grassOrNot, !.
	move(A,_,_) :- 	A = 'n', write('north.'), nl, grassOrNot, !.
	move(A,_,_) :- 	A = 'e', write('east.'), nl, grassOrNot, !.
	move(A,_,_) :- 	A = 'w', write('west.'), nl, grassOrNot, !.

	movement(_,_,_) :-	state(0), err_nostart, !.
	movement(_,_,_) :-	state(2), err_onencounter, !.
	movement(_,_,_) :-	state(3), err_onpick, !.
	movement(_,_,_) :-	state(4), err_onbattle, !.
	movement(X,Y,Z) :-	state(1), move(X,Y,Z).
	movement(X,Y,Z) :-	state(5),  
						inbattleE(A),
						legend(A,B,C),
						retract(inbattleE(A)), retractall(specIs(_)),
						retract(legend(A,B,C)),
						legendInf(A,D,B),
						retract(legendInf(A,D,B)),
						retract(legendList(L)), delete(L,A,L2), assertz(legendList(L2)),
						retract(state(5)), 
						assertz(state(1)),
						move(X,Y,Z), !.
	movement(X,Y,Z) :-	state(5), 
						retractall(specIs(_)),
						retractall(inbattleE(_)),
						retractall(enemy(_,_)),
						retractall(enemyInf(_,_,_,_)),
						retract(state(5)), 
						assertz(state(1)), 
						move(X,Y,Z).
	s :- movement(s,0,1), fail.
	n :- movement(n,0,-1), fail.
	e :- movement(e,1,0), fail.
	w :- movement(w,-1,0), fail.

	%***Movement Handling Section End***%



	%***Map Handling Section***%
	%**Load from File**%
	loadmap :- 	assertz(myposition(2,1)),
				open('petabaru.txt',read,F),
				forall(between(0,55,Y), lineLoad(Y,F)), 
				close(F).

	lineLoad(Y,F) :- 	read(F,L),
						forall(between(0,113,X), columnLoad(X,Y,L)).

	columnLoad(X,Y,L) :-	A is 0+(1*X),
							sub_atom(L,A,1,_,C),
							assertz(position(X,Y,C)), 
							(C = 'G', retract(avaiGym(Ag)), append(Ag,[[X,Y]],Ag2), assertz(avaiGym(Ag2)); 1=1).

	%**View the Map**%
	map :- 	state(0), err_nostart, !.
	map :- 	\+ state(0),
			myposition(_,A),
			(A =< 24, forall(between(0,24,Y), linePrint(Y)), !; forall(between(25,55,Y), linePrint(Y))).

	linePrint(Y) :- forall(between(0,113,X), columnPrint(X,Y)), nl.

	columnPrint(X,Y) :- position(X,Y,C), (myposition(X,Y), write('P'), !; position(X,Y,@), \+ boss(X,Y,_), write('-'), !; write(C)).

	%***Map Handling Section End***%



	%***Final Boss Section***%
	finalBoss :- 	stopsong,
					write('Yonatan: You did it!'), nl, flush_output, sleep(1),
					write('Yonatan: You have defeated all the legendary skipper!'), nl, flush_output, sleep(1),
					write('Yonatan: Go and collect your...'), nl, flush_output, sleep(1),
					write('???: Bzzt'), nl, flush_output, sleep(1),
					write('???: You think that\'s the end? Fight me!'), nl, flush_output,
					playsong('finalbosstheme',1), sleep(2),
					assertz(inbattleE(???)), assertz(specIs(avaiE)), animateFront, retract(state(6)), assertz(state(2)), insertlegend(???,125,999),
					write('??? has appeared! '), (fight; 1=1).



	%***Final Boss Section End***%