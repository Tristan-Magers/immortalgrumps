execute if entity @s[scores={card1=1..}] run function game:givecard/hero
scoreboard players remove @s card1 1
execute if entity @s[scores={card1=1..}] run function game:player/unstore_card/hero