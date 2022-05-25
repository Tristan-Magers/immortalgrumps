scoreboard players operation @e[tag=text] entID -= @s entID

execute if entity @s[tag=info] as @e[tag=text,scores={entID=0}] at @s run tp @s ~ ~0.5 ~

scoreboard players operation @e[tag=text] entID += @s entID

#summon extra info (1.5 for 1 line, 1.6/1.35 for 2)
execute if entity @s[tag=info,scores={buildType=4}] run summon armor_stand ~ ~1.6 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Can\'t be damaged by monsters."}'}
execute if entity @s[tag=info,scores={buildType=4}] run summon armor_stand ~ ~1.35 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Costs 3 Heroes"}'}
execute if entity @s[tag=info,scores={buildType=5}] run summon armor_stand ~ ~1.6 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Can\'t be damaged by assassins."}'}
execute if entity @s[tag=info,scores={buildType=5}] run summon armor_stand ~ ~1.35 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Costs 3 Monsters"}'}
execute if entity @s[tag=info,scores={buildType=6}] run summon armor_stand ~ ~1.6 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Can\'t be damaged by heroes."}'}
execute if entity @s[tag=info,scores={buildType=6}] run summon armor_stand ~ ~1.35 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Costs 3 Assassins"}'}
execute if entity @s[tag=info,scores={buildType=7}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw 2 cards when destroyed."}'}
execute if entity @s[tag=info,scores={buildType=8}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"If a tie, both buildings are destroyed."}'}
execute if entity @s[tag=info,scores={buildType=9}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Deal +1 damage, including on tie."}'}
execute if entity @s[tag=info,scores={buildType=10}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"When placed, remove any advisor."}'}

#
execute if entity @s[tag=store] as @s at @s run tp @s ~ ~0.3 ~
execute if entity @s[tag=info] as @s at @s run tp @s ~ ~0.5 ~

# summon name
execute if entity @s[scores={buildType=1}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Tower"}'}
execute if entity @s[scores={buildType=2}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Town"}'}
execute if entity @s[scores={buildType=3}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Camp"}'}
execute if entity @s[scores={buildType=4}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Heroic City"}'}
execute if entity @s[scores={buildType=5}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Monster Pit"}'}
execute if entity @s[scores={buildType=6}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Assassin Hideout"}'}
execute if entity @s[scores={buildType=7}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Forest Village"}'}
execute if entity @s[scores={buildType=8}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Barbaric Village"}'}
execute if entity @s[scores={buildType=9}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Blacksmith Forge"}'}
execute if entity @s[scores={buildType=10}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Shadow Cult"}'}

execute if entity @s[scores={buildType=999}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Guard Tower"}'}
execute if entity @s[scores={buildType=1000}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Royal Tower"}'}

#
execute if entity @s[tag=store] as @s at @s run tp @s ~ ~-0.3 ~
execute if entity @s[tag=info] as @s at @s run tp @s ~ ~-0.5 ~

scoreboard players operation @e[tag=newtext] entID = @s entID
tag @e[tag=newtext] remove newtext