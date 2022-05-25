execute if entity @s[scores={card2=1..}] run function game:givecard/coolhero
scoreboard players remove @s card2 1
execute if entity @s[scores={card2=1..}] run function game:player/unstore_card/coolhero