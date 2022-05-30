tag @e remove selected

execute if entity @e[tag=building,tag=seen_perm,tag=seen_me] run tag @s add temp_was_selected
execute if entity @e[tag=building,tag=seen_perm] run tag @e remove seen_perm

execute if entity @e[tag=seen_me,tag=action_build] run tag @a remove removing
execute if entity @e[tag=seen_me,tag=action_build] run tag @s add select

execute if entity @e[tag=seen_me,tag=action_build] run execute as @e[tag=seen_me,tag=action_build] at @s run function game:ent/building/break

execute if entity @e[tag=seen_me,tag=action_build] run clear @s lime_dye
execute if entity @e[tag=seen_me,tag=action_build] run clear @s barrier
execute if entity @e[tag=seen_me,tag=action_build] run item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

execute if entity @e[tag=seen_me,tag=action_build] run function game:player/unstore_cards

execute if entity @e[tag=seen_me,tag=action_build] run function game:player/check_actionable

tag @s remove cancel
execute if entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run tag @s add cancel

execute if entity @s[tag=cancel] run clear @s barrier
execute if entity @s[tag=cancel] run function game:player/unstore_cards
execute if entity @s[tag=cancel] run tag @a remove removing
execute if entity @s[tag=cancel] run tag @s add select
execute if entity @s[tag=cancel] run function game:player/check_actionable
execute if entity @s[tag=cancel] run clear @s lime_dye
execute if entity @s[tag=cancel] run item replace entity @s hotbar.7 with lime_dye{CustomModelData:2,display:{Name:'[{"text":"END TURN","color":"dark_green","bold":true,"italic":false},{"text":"","color":"gray"}]',Lore:[]},HideFlags:32,type:8} 1

tag @s remove cancel

tag @s remove temp_was_selected

scoreboard players set @s click 0