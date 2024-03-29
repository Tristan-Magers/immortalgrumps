scoreboard players operation @e[tag=text] entID -= @s entID

execute if entity @s[tag=info] as @e[tag=text,scores={entID=0}] at @s run tp @s ~ ~0.5 ~

scoreboard players operation @e[tag=text] entID += @s entID

#summon extra info (1.5 for 1 line, 1.6/1.35 for 2)
execute if entity @s[tag=info,scores={buildType=1}] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw +1 at start of turn for"}'}
execute if entity @s[tag=info,scores={buildType=1}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"each of your buildings damaged."}'}
execute if entity @s[tag=info,scores={buildType=2}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw +1 at end of turn."}'}
execute if entity @s[tag=info,scores={buildType=3}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Your buildings heal 2 at start of turn."}'}
execute if entity @s[tag=info,scores={buildType=4}] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw a card when you attack"}'}
execute if entity @s[tag=info,scores={buildType=4}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"and break a building."}'}

#execute if entity @s[tag=info,scores={buildType=4}] if entity @e[tag=advisor,scores={buildType=4},distance=1..,tag=!store2] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw 2 cards when you attack and break"}'}
#execute if entity @s[tag=info,scores={buildType=4}] if entity @e[tag=advisor,scores={buildType=4},distance=1..,tag=!store2] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"a building. (3 cards total with 2 thieves)"}'}

execute if entity @s[tag=info,scores={buildType=5}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Take no damage when attacked with no cards."}'}
execute if entity @s[tag=info,scores={buildType=6}] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Your Assassins do +1 damage."}'}
execute if entity @s[tag=info,scores={buildType=6}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"(Not on trade)"}'}

execute if entity @s[tag=info,scores={buildType=7}] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"If you damage with a COOL card,"}'}
execute if entity @s[tag=info,scores={buildType=7}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"draw 2 cards. (not trade)"}'}

execute if entity @s[tag=info,scores={buildType=8}] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Take +1 Gems on Royal kill."}'}
execute if entity @s[tag=info,scores={buildType=9},tag=store2] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"PLACE ANYWHERE"}'}
execute if entity @s[tag=info,scores={buildType=9},tag=store2] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw -1 at end of turn."}'}
execute if entity @s[tag=info,scores={buildType=9},tag=!store2] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Draw -1 at end of turn."}'}
execute if entity @s[tag=info,scores={buildType=10},tag=store2] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"First thing you buy cost 2 less."}'}
execute if entity @s[tag=info,scores={buildType=10},tag=store2] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"(Next turn)"}'}
execute if entity @s[tag=info,scores={buildType=10},tag=!store2] run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"First thing you buy cost 2 less."}'}

execute if entity @s[tag=info,scores={buildType=11}] run summon armor_stand ~ ~1.8 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"If you deal damage with a monster, draw a card."}'}
execute if entity @s[tag=info,scores={buildType=11}] run summon armor_stand ~ ~1.5 ~ {Tags:["text","newtext","temptext"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"(Not on trade)"}'}

#
execute if entity @s[tag=store2] as @s at @s run tp @s ~ ~0.3 ~
execute if entity @s[tag=info] as @s at @s run tp @s ~ ~0.5 ~

# summon name
execute if entity @s[scores={buildType=1}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Mob"}'}
execute if entity @s[scores={buildType=2}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Accountant"}'}
execute if entity @s[scores={buildType=3}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Builder"}'}
execute if entity @s[scores={buildType=4}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Thief"}'}
execute if entity @s[scores={buildType=5}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Body Double"}'}
execute if entity @s[scores={buildType=6}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Spy"}'}
execute if entity @s[scores={buildType=7}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Celebrity"}'}
execute if entity @s[scores={buildType=8}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Dragon"}'}
execute if entity @s[scores={buildType=9}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Traitor"}'}
execute if entity @s[scores={buildType=10}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Bargainer"}'}
execute if entity @s[scores={buildType=11}] at @s run summon armor_stand ~ ~1.7 ~ {Tags:["text","newtext","temptext","name"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Hunter"}'}

#
execute if entity @s[tag=store2] as @s at @s run tp @s ~ ~-0.3 ~
execute if entity @s[tag=info] as @s at @s run tp @s ~ ~-0.5 ~

scoreboard players operation @e[tag=newtext] entID = @s entID
tag @e[tag=newtext] remove newtext