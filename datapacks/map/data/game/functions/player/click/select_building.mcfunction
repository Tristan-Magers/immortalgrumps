execute unless entity @e[tag=building,tag=target_seen] run tag @e remove selected
execute unless entity @e[tag=building,tag=target_seen] run tag @e remove target

execute if entity @e[tag=building,tag=seen_perm,tag=seen_me] run tag @s add temp_was_selected
execute unless entity @e[tag=building,tag=target_seen] run execute if entity @e[tag=building,tag=seen_perm] run tag @e remove seen_perm
execute unless entity @s[tag=temp_was_selected] run tag @e[tag=seen_me,tag=action_build] add selected
execute unless entity @s[tag=temp_was_selected] run tag @e[tag=seen_me,tag=action_build] add seen_perm

execute if entity @s[scores={player_cards=1..}] if entity @e[tag=!advisor,tag=building,tag=!store,tag=target_seen,tag=built,scores={buildType=1..}] if entity @e[tag=selected,tag=built,scores={buildType=1..}] run function game:player/click/start_battle
execute if entity @s[scores={player_cards=..0}] run tellraw @s {"text":"No cards to attack with."}

execute unless entity @e[tag=building,tag=target_seen] if entity @e[tag=!advisor,tag=building,tag=selected,tag=!store,tag=action_build] run function game:player/click/search_targets

execute if entity @e[tag=building,tag=selected,tag=store] run function game:player/click/start_store
execute if entity @e[tag=building,tag=selected,tag=store2] run function game:player/click/start_store
execute if entity @e[tag=building,tag=!selected,tag=store,tag=seen_me] run tellraw @s {"text":"No space for more buildings."}
execute if entity @e[tag=building,tag=!selected,tag=advisor,tag=seen_me] run tellraw @s {"text":"No advisor action."}
execute unless entity @e[tag=building,tag=!store,tag=target_seen] if entity @e[tag=!advisor,tag=building,tag=!selected,tag=!store,tag=seen_me,tag=!action_build] run tellraw @s {"text":"No actions available for this spot."}

tag @s remove temp_was_selected

scoreboard players set @s click 0