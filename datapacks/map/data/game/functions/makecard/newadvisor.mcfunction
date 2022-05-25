scoreboard players add .AdvisorCards .data 1
scoreboard players operation @s deckPlace = .AdvisorCards .data

execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=advisorcard,type=marker,scores={deckPlace=0}] run function game:makecard/newadvisor