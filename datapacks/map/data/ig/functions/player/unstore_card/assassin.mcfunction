execute if entity @s[scores={card7=1..}] run function ig:givecard/assassin
scoreboard players remove @s card7 1
execute if entity @s[scores={card7=1..}] run function ig:player/unstore_card/assassin