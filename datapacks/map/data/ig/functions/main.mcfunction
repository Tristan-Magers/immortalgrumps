execute as @e[type=item] run data merge entity @s {PickupDelay:0}

# kill (controlled deaths)
kill @e[tag=kill]

# returning players
scoreboard players add @a player_num 0
tag @a[scores={leave=1..,player_num=..0}] remove join
scoreboard players set @a leave 0

# building tag management (will be impacted by players)
execute as @e[tag=building] run function ig:ent/building/reset_tags

# player function
execute as @a at @s run function ig:player/main

# building function
execute as @e[type=armor_stand,tag=building] at @s run function ig:ent/building/main

# advisor visual function
execute as @e[tag=adv_vis] at @s run tp @s ~ ~ ~ facing entity @p

# game state function
function ig:game/check_state

# kill (controlled deaths)
tp @e[tag=kill] ~ ~-1000 ~