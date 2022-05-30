clear @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

execute as @e[type=item] run data merge entity @s {PickupDelay:0}

#
kill @e[tag=kill]

#
scoreboard players add @a player_num 0
tag @a[scores={leave=1..,player_num=..0}] remove join
scoreboard players set @a leave 0

#
tag @e[tag=building] remove target_seen
tag @e[tag=building,tag=!seen_perm] remove seen
tag @e[tag=building,tag=!seen_perm] remove glow

#
execute as @a at @s run function game:player/main

#
execute as @e[type=armor_stand,tag=building] at @s run function game:ent/building/main

#
execute as @e[tag=adv_vis] at @s run tp @s ~ ~ ~ facing entity @p

#
tp @e[tag=kill] ~ ~-1000 ~

#
#execute if score .running .game = .1 .num unless entity @a[scores={player_num=3}] run function game:game/end

scoreboard players set .leaver .game 0

execute if score .running .game = .1 .num if score .player1 .game = .1 .num unless entity @a[scores={player_num=1}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player2 .game = .1 .num unless entity @a[scores={player_num=2}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player3 .game = .1 .num unless entity @a[scores={player_num=3}] run scoreboard players set .leaver .game 1
execute if score .running .game = .1 .num if score .player4 .game = .1 .num unless entity @a[scores={player_num=4}] run scoreboard players set .leaver .game 1

execute if score .running .game = .1 .num if score .leaver .game = .0 .num run scoreboard players set .leave.time .game 0
execute if score .running .game = .1 .num if score .leaver .game = .1 .num run scoreboard players add .leave.time .game 1

execute if score .running .game = .1 .num if score .leave.time .game = .1 .num run say PLAYER LEFT, GAME ENDS IN 60 SECONDS IF THEY DO NOT RETURN
#execute if score .running .game = .1 .num if score .leave.time .game > .1200 .num run function game:game/end

#start button security
execute if score .running .game = .0 .num unless block 0 -52 -46 minecraft:warped_button run clone 10 -60 0 10 -59 1 0 -52 -46
execute if score .running .game = .1 .num if block 0 -52 -46 minecraft:warped_button run fill 0 -52 -46 0 -51 -45 air