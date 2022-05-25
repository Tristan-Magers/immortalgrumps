execute store result score @s player_cards run clear @s paper 0

#
execute as @s[tag=!turn_now,tag=turn] run function game:player/newturn

tag @s remove turn_now
tag @s[tag=turn] add turn_now

#detects building to highlight (t1 defines look distance)
tag @e remove seen_me
scoreboard players set @s t1 100
execute as @s at @s run function game:player/look_for_building

#
execute if entity @s[scores={player_cards=0},tag=!turn,tag=battle] run function game:player/attack/nocards

#
#execute if entity @s[scores={player_cards=0},tag=turn] run function game:player/click/end_turn

#
execute if entity @s[scores={click=1..},tag=turn] run function game:player/click
execute if entity @s[scores={click=1..},tag=!turn,tag=battle] run function game:player/click
scoreboard players set @s click 0

#
execute if entity @s[tag=turn,tag=battle_wait,scores={player_card_opponent=..0}] run scoreboard players operation @s player_card_opponent = @a[tag=defender,limit=1,scores={player_card_select=1..}] player_card_select
execute if entity @s[tag=turn,tag=battle_wait,scores={player_card_opponent=1..}] run function game:player/attack/process

#
execute as @s[tag=select] run function game:player/check_actionable

#
tag @s[tag=taking] remove select

#
team join player1 @s[team=!player1,scores={player_num=1}]
team join player2 @s[team=!player2,scores={player_num=2}]
team join player3 @s[team=!player3,scores={player_num=3}]
team join player4 @s[team=!player4,scores={player_num=4}]

team leave @s[scores={player_num=0}]

#
effect give @s[tag=turn] minecraft:glowing 3 10 true
effect clear @s[tag=!turn] minecraft:glowing

#
item replace entity @s[tag=battle,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin"}]}] armor.head with minecraft:carved_pumpkin
item replace entity @s[tag=!battle] armor.head with minecraft:air

#
effect give @s minecraft:saturation 999999 10 true
effect give @s minecraft:weakness 999999 10 true

#
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]}] hotbar.8 with minecraft:ender_pearl