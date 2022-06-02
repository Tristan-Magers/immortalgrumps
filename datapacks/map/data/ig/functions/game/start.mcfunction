scoreboard objectives remove player_num
scoreboard objectives add player_num dummy

scoreboard objectives remove player_cards
scoreboard objectives add player_cards dummy {"text":"Cards"}

function ig:game/setup

fill 19 -58 -35 -19 -58 -73 barrier
tp @a 0.61 -56.00 -53.21

clear @s

execute as @a run function ig:player/draw
execute as @a run function ig:player/draw
execute as @a run function ig:player/draw
execute as @a run function ig:player/draw
execute as @a run function ig:player/draw
execute as @a run function ig:player/draw
execute as @a run function ig:player/draw

execute as @a run function ig:player/store_cards
execute as @a run function ig:player/unstore_cards

tag @e remove seen_perm

execute as @a[scores={player_num=1}] run function ig:player/start_turn

scoreboard objectives setdisplay sidebar player_cards

execute as @a run function ig:player/teleport

scoreboard players set .running .game 1

fill 0 -52 -46 0 -51 -45 air