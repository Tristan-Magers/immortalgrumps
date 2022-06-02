execute if entity @s[scores={card3=1..}] run function ig:givecard/leghero
scoreboard players remove @s card3 1
execute if entity @s[scores={card3=1..}] run function ig:player/unstore_card/leghero