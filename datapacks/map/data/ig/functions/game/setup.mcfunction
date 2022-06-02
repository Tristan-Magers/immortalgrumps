execute as @e[tag=building,type=armor_stand] at @s run setblock ~ ~1 ~ air
kill @e[type=shulker]
kill @e[tag=text,type=armor_stand]
kill @e[tag=building,type=armor_stand]
kill @e[tag=gems,type=armor_stand]
kill @e[type=villager]
kill @e[type=zombie]
kill @e[type=zombie_villager]

scoreboard players set @a player_num 0

scoreboard players set .leave.time .game 0

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

team join player1 @a[team=!player1,scores={player_num=1}]
team join player2 @a[team=!player2,scores={player_num=2}]
team join player3 @a[team=!player3,scores={player_num=3}]
team join player4 @a[team=!player4,scores={player_num=4}]

tellraw @a [{"text":"\nSTARTED GAME!!!","color":"dark_aqua","bold":true}]

tellraw @a [{"text":"------------------------","color":"white","bold":true}]

execute if entity @a[scores={player_num=1}] run tellraw @a [{"text":"Player 1 : ","color":"white","bold":true},{"selector":"@a[scores={player_num=1}]","bold":false}]
execute if entity @a[scores={player_num=2}] run tellraw @a [{"text":"Player 2 : ","color":"white","bold":true},{"selector":"@a[scores={player_num=2}]","bold":false}]
execute if entity @a[scores={player_num=3}] run tellraw @a [{"text":"Player 3 : ","color":"white","bold":true},{"selector":"@a[scores={player_num=3}]","bold":false}]
execute if entity @a[scores={player_num=4}] run tellraw @a [{"text":"Player 4 : ","color":"white","bold":true},{"selector":"@a[scores={player_num=4}]","bold":false}]

tellraw @a [{"text":"------------------------\n","color":"white","bold":true}]

function ig:game/build_map

clear @s
function ig:game/makedeck