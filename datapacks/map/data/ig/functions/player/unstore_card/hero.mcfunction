execute if entity @s[scores={card1=1..}] run function ig:givecard/hero
scoreboard players remove @s card1 1
execute if entity @s[scores={card1=1..}] run function ig:player/unstore_card/hero