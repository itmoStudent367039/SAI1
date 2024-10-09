% Факты об играх серии GTA (с одним аргументом)
game('GTA III').
game('GTA Vice City').
game('GTA San Andreas').
game('GTA IV').
game('GTA V').
game('GTA Liberty City Stories').
game('GTA Vice City Stories').
game('GTA Chinatown Wars').
game('GTA Advance').
game('GTA Online').
game('GTA The Lost and Damned').
game('GTA The Ballad of Gay Tony').
game('GTA London 1969').
game('GTA London 1961').
game('GTA').

% Факты о персонажах (с одним аргументом)
character('Claude').
character('Tommy Vercetti').
character('CJ').
character('Niko Bellic').
character('Michael').
character('Trevor').
character('Franklin').
character('Lance Vance').
character('Big Smoke').
character('Roman Bellic').

% Факты о персонажах в конкретных играх (с двумя аргументами)
character_in_game('Claude', 'GTA III').
character_in_game('Tommy Vercetti', 'GTA Vice City').
character_in_game('CJ', 'GTA San Andreas').
character_in_game('Niko Bellic', 'GTA IV').
character_in_game('Michael', 'GTA V').
character_in_game('Trevor', 'GTA V').
character_in_game('Franklin', 'GTA V').
character_in_game('Lance Vance', 'GTA Vice City').
character_in_game('Big Smoke', 'GTA San Andreas').
character_in_game('Roman Bellic', 'GTA IV').

% Факты о транспортных средствах (с двумя аргументами)
vehicle_in_game('Infernus', 'GTA Vice City').
vehicle_in_game('Banshee', 'GTA III').
vehicle_in_game('Sabre Turbo', 'GTA San Andreas').
vehicle_in_game('Comet', 'GTA IV').
vehicle_in_game('Buzzard', 'GTA V').
vehicle_in_game('Dodo', 'GTA III').
vehicle_in_game('Rhino', 'GTA San Andreas').
vehicle_in_game('Jetmax', 'GTA Vice City').
vehicle_in_game('Hunter', 'GTA San Andreas').
vehicle_in_game('Faggio', 'GTA Vice City').

% Факты о локациях (с двумя аргументами)
location_in_game('Liberty City', 'GTA III').
location_in_game('Vice City', 'GTA Vice City').
location_in_game('Los Santos', 'GTA San Andreas').
location_in_game('Los Santos', 'GTA V').
location_in_game('Liberty City', 'GTA IV').
location_in_game('Las Venturas', 'GTA San Andreas').
location_in_game('San Fierro', 'GTA San Andreas').
location_in_game('Alderney', 'GTA IV').
location_in_game('North Yankton', 'GTA V').
location_in_game('Carcer City', 'GTA Online').

% Правила

% Игра с несколькими главными героями
has_multiple_protagonists(Game) :- 
	character_in_game('Michael', Game), 
	character_in_game('Trevor', Game), 
	character_in_game('Franklin', Game).

% Игры, происходящие в Liberty City
set_in_liberty_city(Game) :- 
	location_in_game('Liberty City', Game).

% Action-adventure игра
action_adventure_game(Game) :- 
	game(Game), 
	genre(Game, action_adventure).

% Персонажи, которые появляются в нескольких играх
appears_in_multiple_games(Char) :- 
	character_in_game(Char, Game1), 
	character_in_game(Char, Game2), 
	Game1 \= Game2.

% Персонаж, участвующий в обеих миссиях
appears_in_missions(Char, Mission1, Mission2) :- 
	mission_in_game(Mission1, Game), 
	mission_in_game(Mission2, Game), 
	character_in_game(Char, Game).
