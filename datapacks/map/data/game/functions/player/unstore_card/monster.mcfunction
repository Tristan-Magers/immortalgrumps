execute if entity @s[scores={card4=1..}] run function game:givecard/monster
scoreboard players remove @s card4 1
execute if entity @s[scores={card4=1..}] run function game:player/unstore_card/monster