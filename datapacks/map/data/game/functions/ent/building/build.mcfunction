tag @s add built
execute if entity @s[scores={buildType=1}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:smithing_table
execute if entity @s[scores={buildType=2}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:lectern
execute if entity @s[scores={buildType=3}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:stonecutter
execute if entity @s[scores={buildType=4}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:respawn_anchor
execute if entity @s[scores={buildType=5}] run clone -3 -60 7 -3 -60 7 ~ ~1 ~
execute if entity @s[scores={buildType=6}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:smoker
execute if entity @s[scores={buildType=7}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:birch_leaves
execute if entity @s[scores={buildType=8}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:tnt
execute if entity @s[scores={buildType=9}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:anvil

execute if entity @s[scores={buildType=10}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:end_portal_frame

execute if entity @s[scores={buildType=999}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:chiseled_stone_bricks
execute if entity @s[scores={buildType=1000}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:ender_chest

#does it have more extra info info?
tag @s remove info
execute if entity @s[scores={buildType=4}] run tag @s add info
execute if entity @s[scores={buildType=5}] run tag @s add info
execute if entity @s[scores={buildType=6}] run tag @s add info
execute if entity @s[scores={buildType=7}] run tag @s add info
execute if entity @s[scores={buildType=8}] run tag @s add info
execute if entity @s[scores={buildType=9}] run tag @s add info
execute if entity @s[scores={buildType=10}] run tag @s add info

#set cost
execute if entity @s[scores={buildType=1}] run scoreboard players set @s buildCost 3
execute if entity @s[scores={buildType=2}] run scoreboard players set @s buildCost 2
execute if entity @s[scores={buildType=3}] run scoreboard players set @s buildCost 1
execute if entity @s[scores={buildType=4}] run scoreboard players set @s buildCost 3
execute if entity @s[scores={buildType=5}] run scoreboard players set @s buildCost 3
execute if entity @s[scores={buildType=6}] run scoreboard players set @s buildCost 3
execute if entity @s[scores={buildType=7}] run scoreboard players set @s buildCost 3
execute if entity @s[scores={buildType=8}] run scoreboard players set @s buildCost 2
execute if entity @s[scores={buildType=9}] run scoreboard players set @s buildCost 2
execute if entity @s[scores={buildType=10}] run scoreboard players set @s buildCost 2

#set health
execute if entity @s[scores={buildType=1}] run scoreboard players set @s buildHealthMax 6
execute if entity @s[scores={buildType=2}] run scoreboard players set @s buildHealthMax 4
execute if entity @s[scores={buildType=3}] run scoreboard players set @s buildHealthMax 2
execute if entity @s[scores={buildType=4}] run scoreboard players set @s buildHealthMax 6
execute if entity @s[scores={buildType=5}] run scoreboard players set @s buildHealthMax 5
execute if entity @s[scores={buildType=6}] run scoreboard players set @s buildHealthMax 4
execute if entity @s[scores={buildType=7}] run scoreboard players set @s buildHealthMax 3
execute if entity @s[scores={buildType=8}] run scoreboard players set @s buildHealthMax 3
execute if entity @s[scores={buildType=9}] run scoreboard players set @s buildHealthMax 3
execute if entity @s[scores={buildType=10}] run scoreboard players set @s buildHealthMax 3

execute if entity @s[scores={buildType=999}] run scoreboard players set @s buildHealthMax 4
execute if entity @s[scores={buildType=1000}] run scoreboard players set @s buildHealthMax 5

execute if entity @s[scores={buildHealthMax=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/1"}'}
execute if entity @s[scores={buildHealthMax=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/2"}'}
execute if entity @s[scores={buildHealthMax=3}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"3/3"}'}
execute if entity @s[scores={buildHealthMax=4}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"4/4"}'}
execute if entity @s[scores={buildHealthMax=5}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"5/5"}'}
execute if entity @s[scores={buildHealthMax=6}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"6/6"}'}
execute if entity @s[scores={buildHealthMax=7}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"7/7"}'}

execute if entity @s[tag=royal] run team join royal @e[tag=newtext,tag=health]
execute if entity @s[tag=info] run team join info @e[tag=newtext,tag=health]

execute if entity @s[tag=store,scores={buildCost=1}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}
execute if entity @s[tag=store,scores={buildCost=2}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 2","color":"dark_aqua"}'}
execute if entity @s[tag=store,scores={buildCost=3}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 3","color":"dark_aqua"}'}
execute if entity @s[tag=store,scores={buildCost=4}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 4","color":"dark_aqua"}'}
execute if entity @s[tag=store,scores={buildCost=5}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 5","color":"dark_aqua"}'}

scoreboard players operation @e[tag=newtext] entID = @s entID
tag @e[tag=newtext] remove newtext

scoreboard players add @s buildHealth 0
scoreboard players operation @s[scores={buildHealth=..0}] buildHealth = @s buildHealthMax

function game:ent/building/health_update

tag @s remove seen2
tag @s remove selected

#Shadow Cult effect
execute if entity @s[scores={buildType=10},tag=!store] if entity @e[tag=building,tag=advisor,tag=!store2,tag=built] as @p[tag=turn] run function game:player/effect/start_shadow_cult