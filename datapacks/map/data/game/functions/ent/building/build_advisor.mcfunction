tag @s add built

#entity
execute if entity @s[scores={buildType=1}] run summon villager ~0.2 ~0.5 ~0.2 {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains"}}
execute if entity @s[scores={buildType=1}] run summon villager ~-0.2 ~0.5 ~0.2 {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains"}}
execute if entity @s[scores={buildType=1}] run summon villager ~0.2 ~0.5 ~-0.2 {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains"}}
execute if entity @s[scores={buildType=1}] run summon villager ~-0.2 ~0.5 ~-0.2 {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains"}}
execute if entity @s[scores={buildType=2}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:cartographer",type:"minecraft:desert"},ArmorItems:[{},{},{},{id:"minecraft:gold_nugget",Count:1b}]}
execute if entity @s[scores={buildType=3}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:mason",type:"minecraft:plains"},ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[scores={buildType=4}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:shepherd",type:"minecraft:swamp"},ArmorItems:[{},{},{},{id:"minecraft:gold_nugget",Count:1b}]}
execute if entity @s[scores={buildType=5}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:toolsmith",type:"minecraft:taiga"},ArmorItems:[{},{},{},{id:"minecraft:chainmail_chestplate",Count:1b}]}
execute if entity @s[scores={buildType=6}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:snow"},ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute if entity @s[scores={buildType=7}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:butcher",type:"minecraft:jungle"},ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute if entity @s[scores={buildType=8}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:farmer",type:"minecraft:savanna"},ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]}
execute if entity @s[scores={buildType=9}] run summon zombie_villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b}]}
execute if entity @s[scores={buildType=10}] run summon villager ~ ~0.5 ~ {Tags:["adv_vis","new_adv_vis"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-999999,VillagerData:{profession:"minecraft:mason",type:"minecraft:plains"},ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]}

scoreboard players operation @e[tag=new_adv_vis] entID = @s entID
tag @e[tag=new_adv_vis] remove new_adv_vis

#advisors always have extra info
tag @s add info

#set cost
scoreboard players set @s buildCost 2
execute if entity @s[scores={buildType=1}] run scoreboard players set @s buildCost 1
execute if entity @s[scores={buildType=2}] run scoreboard players set @s buildCost 1
execute if entity @s[scores={buildType=3}] run scoreboard players set @s buildCost 1
execute if entity @s[scores={buildType=6}] run scoreboard players set @s buildCost 1
execute if entity @s[scores={buildType=9}] run scoreboard players set @s buildCost 1

#set health
execute if entity @s[scores={buildType=1}] run scoreboard players set @s buildHealthMax 999999

execute if entity @s[tag=store2,scores={buildCost=1}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","cost"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 1","color":"dark_aqua"}'}
execute if entity @s[tag=store2,scores={buildCost=2}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","cost"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 2","color":"dark_aqua"}'}
execute if entity @s[tag=store2,scores={buildCost=3}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","cost"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 3","color":"dark_aqua"}'}
execute if entity @s[tag=store2,scores={buildCost=4}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","cost"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 4","color":"dark_aqua"}'}
execute if entity @s[tag=store2,scores={buildCost=5}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","cost"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Cost 5","color":"dark_aqua"}'}

scoreboard players operation @e[tag=newtext] entID = @s entID
tag @e[tag=newtext] remove newtext

scoreboard players add @s buildHealth 0
scoreboard players operation @s[scores={buildHealth=..0}] buildHealth = @s buildHealthMax

tag @s remove seen2