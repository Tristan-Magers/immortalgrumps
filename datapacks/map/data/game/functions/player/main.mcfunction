execute store result score @s[scores={player_num=1..}] player_cards run clear @s paper 0

#join
execute unless entity @s[tag=join] run function game:player/join

#
tag @s[tag=turn,tag=!select,tag=!battle,tag=!battle_wait,tag=!buying,tag=!placing,tag=!removing,tag=!placing_adv,tag=!taking] add select

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

#
clear @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] written_book
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] hotbar.8 with written_book{title:"How To Play",author:"",pages:['[{"text":"Goal: ","bold":true},{"bold":false,"text":"Collect all colors of gems. (or three in 1v1)"},{"bold":false,"text":"\\n\\nBreak Royal Towers to steal gems."},{"bold":false,"text":"\\n\\nBuy Buildings and Avisors to attack and defend yourself."},{"bold":false,"text":"\\n\\nBattle with cards, in a Rock-Paper-Scissors type fight."}]']} 1

#
title @s actionbar {"text":""}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=store] run title @s actionbar {"text":"Buy Building"}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=store2] run title @s actionbar {"text":"Buy Advisor"}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=!store,tag=!advisor,tag=royal,tag=action_build] run title @s actionbar {"text":"Your Royal Tower"}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=!store,tag=!advisor,tag=!royal,tag=action_build,tag=!selected] run title @s actionbar {"text":"Attack with building"}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=!store,tag=!advisor,tag=!royal,tag=action_build,tag=selected] run title @s actionbar {"text":"Unselect building"}
execute if entity @s[tag=turn,tag=select] if entity @e[tag=building,tag=seen_me,tag=!store,tag=!advisor,tag=!royal,tag=target] run title @s actionbar {"text":"Attack this building"}
execute if entity @s[tag=battle] run title @s actionbar {"text":"Select card to attack with"}
execute if entity @s[tag=defender,tag=!battle] if entity @p[tag=turn,tag=battle] run title @s actionbar {"text":"Waiting for attacker to select card"}
execute if entity @s[tag=turn,tag=!battle,tag=battle_wait] run title @s actionbar {"text":"Waiting for defender to select card"}
execute if entity @s[tag=turn,tag=buying] run title @s actionbar [{"text":"Select cards to spend ("},{"color":"gold","score":{"name":"@s","objective":"player_price"}},{"text":" Remaining}"}]
execute if entity @s[tag=turn,tag=placing] run title @s actionbar {"text":"Place building in valid spot"}
execute if entity @s[tag=turn,tag=placing_adv] run title @s actionbar {"text":"Place advisor in valid spot"}
execute if entity @s[tag=turn,tag=removing] run title @s actionbar {"text":"Choose advisor to remove (can be canceled)"}
execute if entity @s[tag=turn,tag=removing] if entity @e[tag=building,tag=seen_me,tag=action_build] run title @s actionbar {"text":"Remove this advisor."}