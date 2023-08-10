tag @a remove join
scoreboard players set @a player_num 0
tag @a remove turn

scoreboard players set .player1 .game 0
scoreboard players set .player2 .game 0
scoreboard players set .player3 .game 0
scoreboard players set .player4 .game 0

scoreboard players set .running .game 0

tellraw @a {"text":"\nGAME ENDED\n","color":"#28BA1E","bold":true}

scoreboard objectives remove player_num
scoreboard objectives add player_num dummy

clone 10 -60 0 10 -59 1 0 -52 -46

bossbar remove minecraft:timer
bossbar remove minecraft:timer_p

tag @a remove taking
tag @a remove buying
tag @a remove select
tag @a remove turn
tag @a remove battle
tag @a remove buying
tag @a remove placing
tag @a remove removing

tag @e remove seen_perm
tag @e remove target
tag @e remove selected