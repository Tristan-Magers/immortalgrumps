execute if entity @s[scores={card6=1..}] run function ig:givecard/legmonster
scoreboard players remove @s card6 1
execute if entity @s[scores={card6=1..}] run function ig:player/unstore_card/legmonster