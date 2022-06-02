execute if entity @s[scores={card4=1..}] run function ig:givecard/monster
scoreboard players remove @s card4 1
execute if entity @s[scores={card4=1..}] run function ig:player/unstore_card/monster