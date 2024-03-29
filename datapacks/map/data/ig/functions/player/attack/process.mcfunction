scoreboard players set @s player_damage 0

#default damage
scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=1..3}] player_damage 999
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=4..6}] player_damage 999
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=7..9}] player_damage 999

scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=4..6}] player_damage 3
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=7..9}] player_damage 2
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=1..3}] player_damage 1

scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=1..3}] player_damage -3
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=4..6}] player_damage -2
scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=7..9}] player_damage -1

#No Card
scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=999}] player_damage 3
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=999}] player_damage 2
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=999}] player_damage 1

#Spy advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=defender] player_num if entity @p[scores={player_card_select=1..3,player_card_opponent=7..9}] run summon marker ~ ~ ~ {Tags:["chattext","effect"],CustomName:'{"text":"[Spy]","color":"yellow"}'}
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num if entity @p[scores={player_card_select=7..9,player_card_opponent=1..3}] run summon marker ~ ~ ~ {Tags:["chattext","effect"],CustomName:'{"text":"[Spy]","color":"gold"}'}
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run scoreboard players add @s[scores={player_card_select=7..9,player_card_opponent=1..3}] player_damage 1
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn] run scoreboard players remove @s[scores={player_card_select=1..3,player_card_opponent=7..9}] player_damage 1

execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num if entity @p[scores={player_card_select=7..9,player_card_opponent=999}] run summon marker ~ ~ ~ {Tags:["chattext","effect"],CustomName:'{"text":"[Spy]","color":"gold"}'}
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num if entity @p[scores={player_card_select=7..9,player_card_opponent=999}] run scoreboard players add @p[tag=turn] player_damage 1

#COOL cancel
scoreboard players set @s[scores={player_card_select=2,player_card_opponent=2}] player_damage 0
scoreboard players set @s[scores={player_card_select=2,player_card_opponent=5}] player_damage 0
scoreboard players set @s[scores={player_card_select=2,player_card_opponent=8}] player_damage 0
scoreboard players set @s[scores={player_card_select=5,player_card_opponent=2}] player_damage 0
scoreboard players set @s[scores={player_card_select=5,player_card_opponent=5}] player_damage 0
scoreboard players set @s[scores={player_card_select=5,player_card_opponent=8}] player_damage 0
scoreboard players set @s[scores={player_card_select=8,player_card_opponent=2}] player_damage 0
scoreboard players set @s[scores={player_card_select=8,player_card_opponent=5}] player_damage 0
scoreboard players set @s[scores={player_card_select=8,player_card_opponent=8}] player_damage 0

#old LENGENDARY effect
#scoreboard players set @s[scores={player_card_select=6,player_card_opponent=1..3}] player_damage 0
#scoreboard players set @s[scores={player_card_select=9,player_card_opponent=4..6}] player_damage 0
#scoreboard players set @s[scores={player_card_select=3,player_card_opponent=7..9}] player_damage 0

#scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=6}] player_damage 0
#scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=9}] player_damage 0
#scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=3}] player_damage 0

#LEGENDARY
execute if entity @s[scores={player_card_select=3,player_card_opponent=4..6}] run function ig:givecard/leghero
execute if entity @s[scores={player_card_select=6,player_card_opponent=7..9}] run function ig:givecard/legmonster
execute if entity @s[scores={player_card_select=9,player_card_opponent=1..3}] run function ig:givecard/legassassin

execute if entity @s[scores={player_card_select=4..6,player_card_opponent=3}] as @a[tag=defender] run function ig:givecard/leghero
execute if entity @s[scores={player_card_select=7..9,player_card_opponent=6}] as @a[tag=defender] run function ig:givecard/legmonster
execute if entity @s[scores={player_card_select=1..3,player_card_opponent=9}] as @a[tag=defender] run function ig:givecard/legassassin

execute if entity @s[scores={player_card_select=3,player_card_opponent=999}] run function ig:givecard/leghero
execute if entity @s[scores={player_card_select=6,player_card_opponent=999}] run function ig:givecard/legmonster
execute if entity @s[scores={player_card_select=9,player_card_opponent=999}] run function ig:givecard/legassassin

#
execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function ig:player/draw
execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function ig:player/draw
execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function ig:player/draw

#blacksmith effect
execute if entity @e[tag=target,scores={buildType=9}] if entity @s[scores={player_damage=-30..-1}] run scoreboard players remove @s player_damage 1
execute if entity @e[tag=selected,scores={buildType=9}] if entity @s[scores={player_damage=1..30}] run scoreboard players add @s player_damage 1

# Archer Hideout effect
execute if entity @e[tag=selected,scores={buildType=11}] run scoreboard players set @p[tag=turn,scores={player_damage=..-1}] player_damage 0

# Gambling Town effect
execute if entity @e[tag=selected,scores={buildType=4}] run scoreboard players operation @p[tag=turn,scores={player_damage=-30..30}] player_damage *= .2 .num
execute if entity @e[tag=target,scores={buildType=4}] run scoreboard players operation @p[tag=turn,scores={player_damage=-30..30}] player_damage *= .2 .num

# Trap cards (not effected by most damage effects)
scoreboard players set @s[scores={player_card_opponent=10}] player_damage 999
scoreboard players set @s[scores={player_card_select=10}] player_damage 999

tag @e remove d_trade
tag @s[scores={player_card_select=10,player_card_opponent=10}] add d_trade

#Body double advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=5}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn,scores={player_card_opponent=999}] run summon marker ~ ~ ~ {Tags:["chattext","effect"],CustomName:'{"text":"[Body Double]","color":"gold"}'}
execute as @e[tag=advisor,tag=!store2,scores={buildType=5}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn] run scoreboard players set @s[scores={player_card_opponent=999}] player_damage 0

#barbaric village (Note: MUST COME BEFORE TRAP CARD EFFECT)
execute unless entity @s[scores={player_card_select=10,player_card_opponent=1..9}] unless entity @s[scores={player_card_select=1..9,player_card_opponent=10}] if entity @e[tag=target,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 10
execute unless entity @s[scores={player_card_select=10,player_card_opponent=1..9}] unless entity @s[scores={player_card_select=1..9,player_card_opponent=10}] if entity @e[tag=target,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 10

execute unless entity @s[scores={player_card_select=10,player_card_opponent=1..9}] unless entity @s[scores={player_card_select=1..9,player_card_opponent=10}] if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 10
execute unless entity @s[scores={player_card_select=10,player_card_opponent=1..9}] unless entity @s[scores={player_card_select=1..9,player_card_opponent=10}] if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 10

execute if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_card_select=10,player_card_opponent=10}] run scoreboard players remove @e[tag=target] buildHealth 10
execute if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_card_select=10,player_card_opponent=10}] run scoreboard players remove @e[tag=selected] buildHealth 10

#Celebrity advisor effect (disabled counting trades)
tag @e remove cool_dam
tag @s[scores={player_card_select=2,player_damage=1..30}] add cool_dam
tag @s[scores={player_card_select=5,player_damage=1..30}] add cool_dam
tag @s[scores={player_card_select=8,player_damage=1..30}] add cool_dam

execute if entity @s[scores={player_card_opponent=2,player_damage=..-1}] run tag @p[tag=defender] add cool_dam
execute if entity @s[scores={player_card_opponent=5,player_damage=..-1}] run tag @p[tag=defender] add cool_dam
execute if entity @s[scores={player_card_opponent=8,player_damage=..-1}] run tag @p[tag=defender] add cool_dam

execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] run tellraw @a[tag=turn] [{"text":"+2 Cards (Celebrity)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] as @p[tag=turn] run function ig:player/draw
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] as @p[tag=turn] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run tellraw @a[tag=defender] [{"text":"+2 Cards (Celebrity)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run function ig:player/draw
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=1] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] run tellraw @a[tag=turn] [{"text":"+2 Cards (Celebrity)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] as @p[tag=turn] run function ig:player/draw
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=cool_dam] as @p[tag=turn] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run tellraw @a[tag=defender] [{"text":"+2 Cards (Celebrity)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run function ig:player/draw
execute as @e[tag=advisor,tag=!store2,scores={buildType=7},tag=2] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=cool_dam] run function ig:player/draw

#Hunter advisor effect (disabled counting trades)
tag @e remove monst_dam
tag @s[scores={player_card_select=4..6,player_damage=1..30}] add monst_dam

execute if entity @s[scores={player_card_opponent=4..6,player_damage=..-1}] run tag @p[tag=defender] add monst_dam

execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=monst_dam] run tellraw @a[tag=turn] [{"text":"+1 Cards (Hunter)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=1] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=monst_dam] as @p[tag=turn] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=1] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=monst_dam] run tellraw @a[tag=defender] [{"text":"+1 Cards (Hunter)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=1] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=monst_dam] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=monst_dam] run tellraw @a[tag=turn] [{"text":"+1 Cards (Hunter)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=2] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,tag=monst_dam] as @p[tag=turn] run function ig:player/draw

execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=2] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=monst_dam] run tellraw @a[tag=defender] [{"text":"+1 Cards (Hunter)","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=11},tag=2] if score @s player_num = @p[tag=defender] player_num as @p[tag=defender,tag=monst_dam] run function ig:player/draw

#damage
execute if entity @s[scores={player_damage=1..30}] run scoreboard players operation @e[tag=target] buildHealth -= @s player_damage
execute if entity @s[scores={player_damage=..-1}] run scoreboard players operation @e[tag=selected] buildHealth += @s player_damage

execute if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 1
execute if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 1

execute if entity @s[scores={player_damage=999},tag=d_trade] run scoreboard players remove @e[tag=target] buildHealth 1
execute if entity @s[scores={player_damage=999},tag=d_trade] run scoreboard players remove @e[tag=selected] buildHealth 1

execute if entity @s[scores={player_card_select=1}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_select=2}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"COOL Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_select=3}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"LEGENDARY Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_select=4}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_select=5}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"COOL Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_select=6}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"LEGENDARY Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_select=7}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_select=8}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"COOL Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_select=9}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"LEGENDARY Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_select=10}] run summon marker ~ ~ ~ {Tags:["chattext","attacker"],CustomName:'{"text":"TRAP!","color":"gray"}'}

execute if entity @s[scores={player_card_opponent=1}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_opponent=2}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"COOL Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_opponent=3}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"LEGENDARY Hero","color":"dark_aqua"}'}
execute if entity @s[scores={player_card_opponent=4}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_opponent=5}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"COOL Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_opponent=6}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"LEGENDARY Monster","color":"dark_green"}'}
execute if entity @s[scores={player_card_opponent=7}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_opponent=8}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"COOL Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_opponent=9}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"LEGENDARY Assassin","color":"dark_purple"}'}
execute if entity @s[scores={player_card_opponent=10}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"TRAP!","color":"gray"}'}

execute if entity @s[scores={player_card_opponent=999}] run summon marker ~ ~ ~ {Tags:["chattext","defender"],CustomName:'{"text":"nothing","color":"gray"}'}

#Damage text
execute if entity @s[scores={player_damage=14}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"14 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=13}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"13 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=12}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"12 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=11}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"11 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=10}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"10 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=9}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"9 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=8}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"8 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=7}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"7 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=6}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"6 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=5}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"5 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=4}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"4 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=3}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"3 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=2}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"2 Damage","color":"green"}'}
execute if entity @s[scores={player_damage=1}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"1 Damage","color":"green"}'}

execute if entity @s[scores={player_damage=-14}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-14 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-13}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-13 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-12}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-12 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-11}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-11 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-10}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-10 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-9}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-9 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-8}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-8 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-7}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-7 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-6}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-6 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-5}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-5 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-4}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-4 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-3}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-3 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-2}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-2 Damage","color":"dark_green"}'}
execute if entity @s[scores={player_damage=-1}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"-1 Damage","color":"dark_green"}'}

execute if entity @s[scores={player_damage=0}] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"0 Damage","color":"gray"}'}
execute if entity @s[scores={player_damage=999},tag=!d_trade] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"TRADE","color":"yellow"}'}
execute if entity @s[scores={player_damage=999},tag=d_trade] run summon marker ~ ~ ~ {Tags:["chattext","damage"],CustomName:'{"text":"TRADE x2","color":"yellow"}'}

#chat text
tellraw @a [{"text":"["},{"text":"⚔","color":"red"},{"text":"] "},{"selector":"@p[tag=turn]"},{"text":" vs "},{"selector":"@p[tag=defender]"},{"text":" ["},{"selector":"@e[tag=chattext,tag=damage]"},{"text":"]\n    ("},{"selector":"@e[tag=chattext,tag=attacker]"},{"text":" vs "},{"selector":"@e[tag=chattext,tag=defender]"},{"text":") "},{"selector":"@e[tag=chattext,tag=effect]"}]
kill @e[tag=chattext]

#
execute if entity @s[scores={player_card_select=10,player_card_opponent=1}] run function ig:givecard/hero
execute if entity @s[scores={player_card_select=10,player_card_opponent=2}] run function ig:givecard/coolhero
execute if entity @s[scores={player_card_select=10,player_card_opponent=3}] run function ig:givecard/leghero
execute if entity @s[scores={player_card_select=10,player_card_opponent=4}] run function ig:givecard/monster
execute if entity @s[scores={player_card_select=10,player_card_opponent=5}] run function ig:givecard/coolmonster
execute if entity @s[scores={player_card_select=10,player_card_opponent=6}] run function ig:givecard/legmonster
execute if entity @s[scores={player_card_select=10,player_card_opponent=7}] run function ig:givecard/assassin
execute if entity @s[scores={player_card_select=10,player_card_opponent=8}] run function ig:givecard/coolassassin
execute if entity @s[scores={player_card_select=10,player_card_opponent=9}] run function ig:givecard/legassassin

execute if entity @s[scores={player_card_opponent=10,player_card_select=1}] run execute as @a[tag=defender] run function ig:givecard/hero
execute if entity @s[scores={player_card_opponent=10,player_card_select=2}] run execute as @a[tag=defender] run function ig:givecard/coolhero
execute if entity @s[scores={player_card_opponent=10,player_card_select=3}] run execute as @a[tag=defender] run function ig:givecard/leghero
execute if entity @s[scores={player_card_opponent=10,player_card_select=4}] run execute as @a[tag=defender] run function ig:givecard/monster
execute if entity @s[scores={player_card_opponent=10,player_card_select=5}] run execute as @a[tag=defender] run function ig:givecard/coolmonster
execute if entity @s[scores={player_card_opponent=10,player_card_select=6}] run execute as @a[tag=defender] run function ig:givecard/legmonster
execute if entity @s[scores={player_card_opponent=10,player_card_select=7}] run execute as @a[tag=defender] run function ig:givecard/assassin
execute if entity @s[scores={player_card_opponent=10,player_card_select=8}] run execute as @a[tag=defender] run function ig:givecard/coolassassin
execute if entity @s[scores={player_card_opponent=10,player_card_select=9}] run execute as @a[tag=defender] run function ig:givecard/legassassin

execute if entity @s[scores={player_card_opponent=10,player_card_select=10}] run function ig:player/draw
execute if entity @s[scores={player_card_opponent=10,player_card_select=10}] run execute as @a[tag=defender] run function ig:player/draw

#
execute as @e[tag=target,tag=building] at @s run function ig:ent/building/update
execute as @e[tag=selected,tag=building] at @s run function ig:ent/building/update

#
execute if entity @e[tag=selected,tag=!built] run tag @e[tag=target] remove seen_perm
execute if entity @e[tag=selected,tag=!built] run tag @e[tag=target] remove selected

execute if entity @e[tag=target,tag=!built] run tag @e[tag=selected] remove seen_perm
execute if entity @e[tag=target,tag=!built] run tag @e[tag=selected] remove selected

tag @e[tag=selected,tag=!built] remove seen_perm
tag @e[tag=target,tag=!built] remove seen_perm

tag @e[tag=selected,tag=!built] remove selected
tag @e[tag=target,tag=!built] remove target

tag @s remove battle_wait
tag @s remove battle
tag @s add select
