#Traitor advisor effect (includes normal draw cards)
tag @a remove traitor1
tag @a remove traitor2

execute as @e[tag=advisor,tag=!store2,scores={buildType=9},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tag @s add traitor1
execute as @e[tag=advisor,tag=!store2,scores={buildType=9},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tag @s add traitor2

execute if entity @s[tag=traitor1] run tellraw @s [{"text":"-1 Card (Traitor)","color":"white"}]
execute if entity @s[tag=traitor2] run tellraw @s [{"text":"-1 Card (Traitor)","color":"white"}]

execute unless entity @s[tag=traitor1] run function ig:player/draw
execute unless entity @s[tag=traitor2] run function ig:player/draw

tag @a remove traitor1
tag @a remove traitor2

#accountant advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=2}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run tellraw @p[tag=turn] [{"text":"+1 Card (Accountant)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=2}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run function ig:player/draw

function ig:player/store_cards
function ig:player/unstore_cards
function ig:player/store_cards

clear @s barrier
clear @s lime_dye

tag @a remove taking
tag @a remove buying
tag @a remove select
tag @a remove turn
tag @a remove battle
tag @a remove buying
tag @a remove placing

tag @e remove seen_perm
tag @e remove target
tag @e remove selected

tellraw @a [{"selector":"@s"},{"text":" ENDED TURN","color":"gold"}]

scoreboard players set @s click 0

scoreboard players operation @s t2 = @s player_num
function ig:player/search_for_next_player

tag @a remove turn_now