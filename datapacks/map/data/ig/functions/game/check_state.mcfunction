#execute if score .running .game = .1 .num unless entity @a[scores={player_num=3}] run function ig:game/end

scoreboard players set .leaver .game 0

execute if score .running .game = .1 .num if score .player1 .game = .1 .num unless entity @a[scores={player_num=1}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player2 .game = .1 .num unless entity @a[scores={player_num=2}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player3 .game = .1 .num unless entity @a[scores={player_num=3}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player4 .game = .1 .num unless entity @a[scores={player_num=4}] run scoreboard players set .leaver .game 1

execute if score .running .game = .1 .num if score .leaver .game = .0 .num run scoreboard players set .leave.time .game 0
execute if score .running .game = .1 .num if score .leaver .game = .1 .num run scoreboard players add .leave.time .game 1

execute if score .running .game = .1 .num if score .leave.time .game = .1 .num run tellraw @a [{"text":"PLAYER LEFT, GAME ENDS IN 60 SECONDS IF THEY DO NOT RETURN","color":"white","bold":true}]
#execute if score .running .game = .1 .num if score .leave.time .game > .1200 .num run function ig:game/end

#start button security
execute if score .running .game = .0 .num unless block 0 -52 -46 minecraft:warped_button run clone 10 -60 0 10 -59 1 0 -52 -46
execute if score .running .game = .1 .num if block 0 -52 -46 minecraft:warped_button run fill 0 -52 -46 0 -51 -45 air

#
scoreboard players add .game.time .game 1