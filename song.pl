playsong(X,1) :-	assertz(song(X)), fail.
playsong(_,_) :-	mute(1), !.
playsong(X,1) :- 	atom_concat('vlc --loop -I dummy --play-and-exit SoundTrack/',X,X2), 
					atom_concat(X2,'.mp3 &>/dev/null &',X3), 
					shell(X3), !.
%playsong(X,Y) :-	Y = 1,
%					atom_concat('"C:\\Program Files\\VideoLAN\\VLC\\vlc.exe" -I dummy --play-and-exit SoundTrack/',X,X2), 
%					atom_concat(X2,'.mp3 > nul 2>&1',X3), 
%					system(X3), !.

playsong(X,0) :- 	atom_concat('vlc -I dummy --play-and-exit SoundTrack/',X,X2), 
					atom_concat(X2,'.mp3 &>/dev/null &',X3), 
					shell(X3), !.
playsong(_,_).

stopsong :- shell('pkill vlc'), fail.
stopsong :- retractall(song(_)).

stopsong2 :- shell('pkill vlc'), fail.
stopsong2.