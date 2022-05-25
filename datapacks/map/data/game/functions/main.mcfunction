clear @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

execute as @e[type=item] run data merge entity @s {PickupDelay:0}

#
kill @e[tag=kill]

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