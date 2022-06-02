execute if entity @s[scores={card10=1..}] run function ig:givecard/trap
scoreboard players remove @s card10 1
execute if entity @s[scores={card10=1..}] run function ig:player/unstore_card/trap