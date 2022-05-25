execute if entity @s[scores={card9=1..}] run function game:givecard/legassassin
scoreboard players remove @s card9 1
execute if entity @s[scores={card9=1..}] run function game:player/unstore_card/legassassin