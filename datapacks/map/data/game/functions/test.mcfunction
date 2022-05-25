function game:setup

fill 19 -58 -35 -19 -58 -73 barrier
tp @a 0.61 -56.00 -53.21

clear @s
function game:makedeck

execute as @a run function game:player/draw
execute as @a run function game:player/draw
execute as @a run function game:player/draw
execute as @a run function game:player/draw
execute as @a run function game:player/draw
execute as @a run function game:player/draw
execute as @a run function game:player/draw

execute as @a run function game:player/store_cards
execute as @a run function game:player/unstore_cards

tag @e remove seen_perm

execute as @a[scores={player_num=1}] run function game:player/click/start_turn

scoreboard objectives remove palyer_cards
scoreboard objectives add player_cards dummy {"text":"Cards"}

scoreboard objectives setdisplay sidebar player_cards