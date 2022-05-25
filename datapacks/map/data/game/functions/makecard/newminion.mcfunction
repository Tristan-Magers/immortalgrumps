scoreboard players add .MinionsCards .data 1
scoreboard players operation @s deckPlace = .MinionsCards .data

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=minion,type=marker,scores={deckPlace=0}] run function game:makecard/newminion