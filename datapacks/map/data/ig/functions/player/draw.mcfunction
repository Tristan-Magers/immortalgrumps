execute store result score @s player_cards run clear @s paper 0

execute if entity @s[scores={player_cards=..6}] run function ig:drawcard/minion