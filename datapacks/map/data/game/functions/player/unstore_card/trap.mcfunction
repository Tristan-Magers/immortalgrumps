execute if entity @s[scores={card10=1..}] run function game:givecard/trap
scoreboard players remove @s card10 1
execute if entity @s[scores={card10=1..}] run function game:player/unstore_card/trap