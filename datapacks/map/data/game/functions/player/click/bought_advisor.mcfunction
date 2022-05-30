#Bargainer effect
execute if entity @s[tag=bargain] as @e[tag=store,scores={buildCost=1}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store,scores={buildCost=2}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 2","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store,scores={buildCost=3}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 3","color":"dark_aqua"}'}

execute if entity @s[tag=bargain] as @e[tag=store2,scores={buildCost=1}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store2,scores={buildCost=2}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 2","color":"dark_aqua"}'}
execute if entity @s[tag=bargain] as @e[tag=store2,scores={buildCost=3}] at @s run data merge entity @e[tag=cost,limit=1,sort=nearest,distance=..3] {CustomName:'{"text":"Cost 3","color":"dark_aqua"}'}

tag @s remove bargain

scoreboard players operation @e[tag=text] entID -= @e[tag=building,tag=selected,tag=store2,limit=1] entID

tellraw @a [{"text":"["},{"text":"☺","color":"yellow"},{"text":"] "},{"selector":"@a[tag=turn]"},{"text":" BOUGHT "},{"selector":"@e[tag=text,tag=name,scores={entID=0}]","color":"gray"},{"text":"\n    ("},{"selector":"@e[tag=chattext,tag=spent]"},{"text":")"}]
tellraw @s {"text":"Place the building in a free spot"}

kill @e[tag=chattext,tag=spent]

scoreboard players operation @e[tag=text] entID += @e[tag=building,tag=selected,tag=store2,limit=1] entID

scoreboard players operation @s player_buy_build = @e[tag=building,tag=selected,tag=store2,limit=1] buildType

function game:player/check_actionable_place_adv

#Traitor placement
execute if entity @e[tag=building,tag=selected,tag=store2,scores={buildType=9}] run function game:player/check_actionable_adv_all

execute as @e[tag=building,tag=selected,tag=store2,limit=1] at @s run function game:ent/building/break

tag @e remove seen_perm
tag @e remove selected

tag @s remove buying
tag @s add placing_adv

clear @s barrier

function game:player/store_cards
function game:player/unstore_cards

function game:player/teleport



