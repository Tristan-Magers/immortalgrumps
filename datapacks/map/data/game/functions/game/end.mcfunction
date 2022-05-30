tag @a remove join
scoreboard players set @a player_num 0
tag @a remove turn

scoreboard players set .player1 .game 0
scoreboard players set .player2 .game 0
scoreboard players set .player3 .game 0
scoreboard players set .player4 .game 0

scoreboard players set .running .game 0

say end

scoreboard objectives remove player_num
scoreboard objectives add player_num dummy

clone 10 -60 0 10 -59 1 0 -52 -46