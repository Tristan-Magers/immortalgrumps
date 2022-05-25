scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=1..3}] player_damage 999
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=4..6}] player_damage 999
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=7..9}] player_damage 999

scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=4..6}] player_damage 3
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=7..9}] player_damage 2
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=1..3}] player_damage 1

#Spy advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num run tellraw @a [{"text":"+1 Assassin damage!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=6}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn] run scoreboard players add @s[scores={player_card_select=7..9,player_card_opponent=1..3}] player_damage 1

scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=1..3}] player_damage -3
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=4..6}] player_damage -2
scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=7..9}] player_damage -1

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
execute if entity @s[scores={player_card_select=3,player_card_opponent=4..6}] run function game:givecard/leghero
execute if entity @s[scores={player_card_select=6,player_card_opponent=7..9}] run function game:givecard/legmonster
execute if entity @s[scores={player_card_select=9,player_card_opponent=1..3}] run function game:givecard/legassassin

execute if entity @s[scores={player_card_select=4..6,player_card_opponent=3}] as @a[tag=defender] run function game:givecard/leghero
execute if entity @s[scores={player_card_select=7..9,player_card_opponent=6}] as @a[tag=defender] run function game:givecard/legmonster
execute if entity @s[scores={player_card_select=1..3,player_card_opponent=9}] as @a[tag=defender] run function game:givecard/legassassin

#No Card
scoreboard players set @s[scores={player_card_select=1..3,player_card_opponent=999}] player_damage 3
scoreboard players set @s[scores={player_card_select=4..6,player_card_opponent=999}] player_damage 2
scoreboard players set @s[scores={player_card_select=7..9,player_card_opponent=999}] player_damage 1

execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function game:player/draw
execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function game:player/draw
execute if entity @s[scores={player_card_opponent=999}] as @a[tag=defender] run function game:player/draw

scoreboard players set @s[scores={player_card_select=10}] player_damage 0
scoreboard players set @s[scores={player_card_opponent=10}] player_damage 0

#Body double advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=5}] if score @s player_num = @p[tag=defender] player_num run tellraw @a [{"text":"Body Double prevents damage!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=5}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn] run scoreboard players set @s[scores={player_card_opponent=999}] player_damage 0

execute if entity @s[scores={player_damage=1..10}] run scoreboard players operation @e[tag=target] buildHealth -= @s player_damage
execute if entity @s[scores={player_damage=..-1}] run scoreboard players operation @e[tag=selected] buildHealth += @s player_damage

execute if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 1
execute if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 1

#barbaric village
execute if entity @e[tag=target,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 10
execute if entity @e[tag=target,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 10

execute if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 10
execute if entity @e[tag=selected,scores={buildType=8}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 10

#blacksmith effect
execute if entity @e[tag=target,scores={buildType=9}] if entity @s[scores={player_damage=-10..-1}] run scoreboard players remove @e[tag=selected] buildHealth 1
execute if entity @e[tag=selected,scores={buildType=9}] if entity @s[scores={player_damage=1..10}] run scoreboard players remove @e[tag=target] buildHealth 1

execute if entity @e[tag=target,scores={buildType=9}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 1
execute if entity @e[tag=selected,scores={buildType=9}] if entity @s[scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 1

#Trainer advisor effect
execute as @e[tag=advisor,tag=!store2,scores={buildType=7}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,scores={player_damage=999}] run tellraw @a[tag=turn] [{"text":"+1 Trade damage!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7}] if score @s player_num = @p[tag=turn] player_num as @p[tag=turn,scores={player_damage=999}] run scoreboard players remove @e[tag=target] buildHealth 1

execute as @e[tag=advisor,tag=!store2,scores={buildType=7}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn,scores={player_damage=999}] run tellraw @a[tag=defender] [{"text":"+1 Trade damage!","color":"white"}]
execute as @e[tag=advisor,tag=!store2,scores={buildType=7}] if score @s player_num = @p[tag=defender] player_num as @p[tag=turn,scores={player_damage=999}] run scoreboard players remove @e[tag=selected] buildHealth 1

#
execute as @e[tag=target,tag=building] at @s run function game:ent/building/update
execute as @e[tag=selected,tag=building] at @s run function game:ent/building/update

execute if entity @s[scores={player_card_select=1}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_select=2}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"COOL Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_select=3}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"LEGENDARY Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_select=4}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_select=5}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"COOL Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_select=6}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"LEGENDARY Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_select=7}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_select=8}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"COOL Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_select=9}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"LEGENDARY Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_select=10}] run tellraw @a [{"selector":"@s"},{"text":" used "},{"text":"TRAP","color":"white"}]

execute if entity @s[scores={player_card_opponent=1}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_opponent=2}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"COOL Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_opponent=3}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"LEGENDARY Hero","color":"dark_aqua"}]
execute if entity @s[scores={player_card_opponent=4}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_opponent=5}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"COOL Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_opponent=6}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"LEGENDARY Monster","color":"dark_green"}]
execute if entity @s[scores={player_card_opponent=7}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_opponent=8}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"COOL Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_opponent=9}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"LEGENDARY Assassin","color":"dark_purple"}]
execute if entity @s[scores={player_card_opponent=10}] run tellraw @a [{"selector":"@a[tag=defender]"},{"text":" used "},{"text":"TRAP","color":"white"}]

execute if entity @s[scores={player_card_select=10,player_card_opponent=1}] run function game:givecard/hero
execute if entity @s[scores={player_card_select=10,player_card_opponent=2}] run function game:givecard/coolhero
execute if entity @s[scores={player_card_select=10,player_card_opponent=3}] run function game:givecard/leghero
execute if entity @s[scores={player_card_select=10,player_card_opponent=4}] run function game:givecard/monster
execute if entity @s[scores={player_card_select=10,player_card_opponent=5}] run function game:givecard/coolmonster
execute if entity @s[scores={player_card_select=10,player_card_opponent=6}] run function game:givecard/legmonster
execute if entity @s[scores={player_card_select=10,player_card_opponent=7}] run function game:givecard/assassin
execute if entity @s[scores={player_card_select=10,player_card_opponent=8}] run function game:givecard/coolassassin
execute if entity @s[scores={player_card_select=10,player_card_opponent=9}] run function game:givecard/legassassin

execute if entity @s[scores={player_card_opponent=10,player_card_select=1}] run execute as @a[tag=defender] run function game:givecard/hero
execute if entity @s[scores={player_card_opponent=10,player_card_select=2}] run execute as @a[tag=defender] run function game:givecard/coolhero
execute if entity @s[scores={player_card_opponent=10,player_card_select=3}] run execute as @a[tag=defender] run function game:givecard/leghero
execute if entity @s[scores={player_card_opponent=10,player_card_select=4}] run execute as @a[tag=defender] run function game:givecard/monster
execute if entity @s[scores={player_card_opponent=10,player_card_select=5}] run execute as @a[tag=defender] run function game:givecard/coolmonster
execute if entity @s[scores={player_card_opponent=10,player_card_select=6}] run execute as @a[tag=defender] run function game:givecard/legmonster
execute if entity @s[scores={player_card_opponent=10,player_card_select=7}] run execute as @a[tag=defender] run function game:givecard/assassin
execute if entity @s[scores={player_card_opponent=10,player_card_select=8}] run execute as @a[tag=defender] run function game:givecard/coolassassin
execute if entity @s[scores={player_card_opponent=10,player_card_select=9}] run execute as @a[tag=defender] run function game:givecard/legassassin

execute if entity @s[scores={player_card_opponent=10,player_card_select=10}] run function game:player/draw
execute if entity @s[scores={player_card_opponent=10,player_card_select=10}] run execute as @a[tag=defender] run function game:player/draw

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