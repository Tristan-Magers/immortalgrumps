scoreboard players add .BuildCards .data 1
scoreboard players operation @s deckPlace = .BuildCards .data

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=buildcard,type=marker,scores={deckPlace=0}] run function ig:makecard/newbuild