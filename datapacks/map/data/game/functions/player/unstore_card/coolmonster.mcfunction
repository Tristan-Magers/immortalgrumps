execute if entity @s[scores={card5=1..}] run function game:givecard/coolmonster
scoreboard players remove @s card5 1
execute if entity @s[scores={card5=1..}] run function game:player/unstore_card/coolmonster