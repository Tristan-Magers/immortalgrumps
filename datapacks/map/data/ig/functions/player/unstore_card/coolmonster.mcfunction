execute if entity @s[scores={card5=1..}] run function ig:givecard/coolmonster
scoreboard players remove @s card5 1
execute if entity @s[scores={card5=1..}] run function ig:player/unstore_card/coolmonster