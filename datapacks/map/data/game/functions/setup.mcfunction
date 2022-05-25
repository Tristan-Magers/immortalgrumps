execute as @e[tag=building,type=armor_stand] at @s run setblock ~ ~1 ~ air
kill @e[type=shulker]
kill @e[tag=text,type=armor_stand]
kill @e[tag=building,type=armor_stand]
kill @e[tag=gems,type=armor_stand]
kill @e[type=villager]
kill @e[type=zombie]
kill @e[type=zombie_villager]

scoreboard players set @a player_num 0

scoreboard players set .player1 .game 0
scoreboard players set .player2 .game 0
scoreboard players set .player3 .game 1
scoreboard players set .player4 .game 0

scoreboard players set @r[scores={player_num=0}] player_num 1
scoreboard players set @r[scores={player_num=0}] player_num 3
scoreboard players set @r[scores={player_num=0}] player_num 2
scoreboard players set @r[scores={player_num=0}] player_num 4

execute if entity @a[scores={player_num=1}] run scoreboard players set .player1 .game 1
execute if entity @a[scores={player_num=2}] run scoreboard players set .player2 .game 1
execute if entity @a[scores={player_num=3}] run scoreboard players set .player3 .game 1
execute if entity @a[scores={player_num=4}] run scoreboard players set .player4 .game 1

execute if entity @a[scores={player_num=1}] run say Player 1 @a[scores={player_num=1}]
execute if entity @a[scores={player_num=2}] run say Player 2 @a[scores={player_num=2}]
execute if entity @a[scores={player_num=3}] run say Player 3 @a[scores={player_num=3}]
execute if entity @a[scores={player_num=4}] run say Player 4 @a[scores={player_num=4}]

function game:game/build_map

clear @s
function game:makedeck

function game:drawcard/minion
function game:drawcard/minion
function game:drawcard/minion
function game:drawcard/minion
function game:drawcard/minion
function game:drawcard/minion
function game:drawcard/minion