execute if entity @s[scores={card8=1..}] run function ig:givecard/coolassassin
scoreboard players remove @s card8 1
execute if entity @s[scores={card8=1..}] run function ig:player/unstore_card/coolassassin