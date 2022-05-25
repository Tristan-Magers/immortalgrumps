execute if entity @s[scores={card6=1..}] run function game:givecard/legmonster
scoreboard players remove @s card6 1
execute if entity @s[scores={card6=1..}] run function game:player/unstore_card/legmonster