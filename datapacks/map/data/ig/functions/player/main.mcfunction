#inventory management
execute store result score @s[scores={player_num=1..}] player_cards run clear @s paper 0

clear @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

clear @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] written_book
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] hotbar.8 with written_book{title:"How To Play",author:"",pages:['[{"text":"Goal: ","bold":true},{"bold":false,"text":"Collect all colors of gems. (or three in 1v1)"},{"bold":false,"text":"\\n\\nBreak Royal Towers to steal gems."},{"bold":false,"text":"\\n\\nBuy Buildings and Avisors to attack and defend yourself."},{"bold":false,"text":"\\n\\nBattle with cards, in a Rock-Paper-Scissors type fight."}]']} 1

### JOIN
execute unless entity @s[tag=join] run function ig:player/join

### SECURITY

# tag security. make sure active player is at least in selecting phase
tag @s[tag=turn,tag=!select,tag=!battle,tag=!battle_wait,tag=!buying,tag=!placing,tag=!removing,tag=!placing_adv,tag=!taking] add select

# security that buildings are being tagged actionable if they should be
execute as @s[tag=select] run function ig:player/check_actionable

# security that a taking player is not in a select state (this is caused by a different entity and not synced with player)
tag @s[tag=taking] remove select

### PLAYER ACTIONS

# execute new turn (differs from "start turn" as it runs personal executes for your situation)
execute as @s[tag=!turn_now,tag=turn] run function ig:player/newturn

tag @s remove turn_now
tag @s[tag=turn] add turn_now

# detects building to highlight (t1 defines look distance)
tag @e remove seen_me
scoreboard players set @s t1 100
execute as @s at @s run function ig:player/look_for_building

# if being attacked with no cards, makes sure it ends the interaction
execute if entity @s[scores={player_cards=0},tag=!turn,tag=battle] run function ig:player/attack/nocards

# ends turn if you have no cards
# (being worked on)
#execute if entity @s[scores={player_cards=0},tag=turn] run function ig:player/click/end_turn

# executes for players trying to use an item (clicking it)
execute if entity @s[scores={click=1..},tag=turn] run function ig:player/click
execute if entity @s[scores={click=1..},tag=!turn,tag=battle] run function ig:player/click
scoreboard players set @s click 0

# execute for an attacking player waiting for a response
execute if entity @s[tag=turn,tag=battle_wait,scores={player_card_opponent=..0}] run scoreboard players operation @s player_card_opponent = @a[tag=defender,limit=1,scores={player_card_select=1..}] player_card_select
execute if entity @s[tag=turn,tag=battle_wait,scores={player_card_opponent=1..}] run function ig:player/attack/process

### TEAM/EFFECT/ACTIONBAR MANAGEMENT

# teams
team join player1 @s[team=!player1,scores={player_num=1}]
team join player2 @s[team=!player2,scores={player_num=2}]
team join player3 @s[team=!player3,scores={player_num=3}]
team join player4 @s[team=!player4,scores={player_num=4}]

team leave @s[scores={player_num=0}]

# glowing
effect give @s[tag=turn] minecraft:glowing 3 10 true
effect clear @s[tag=!turn] minecraft:glowing

# attacking screen overlay (with pumpkin)
item replace entity @s[tag=battle,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin"}]}] armor.head with minecraft:carved_pumpkin
item replace entity @s[tag=!battle] armor.head with minecraft:air

# default effects
effect give @s minecraft:saturation 999999 10 true
effect give @s minecraft:weakness 999999 10 true

# actionbar
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
