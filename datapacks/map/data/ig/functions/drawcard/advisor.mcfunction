scoreboard players remove @e[tag=advisorcard,type=marker] deckPlace 1

execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run scoreboard players remove .AdvisorCards .data 1

execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=1}] run function ig:makecard/advisor1
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=2}] run function ig:makecard/advisor2
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=3}] run function ig:makecard/advisor3
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=4}] run function ig:makecard/advisor4
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=5}] run function ig:makecard/advisor5
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=6}] run function ig:makecard/advisor6
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=7}] run function ig:makecard/advisor7
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=8}] run function ig:makecard/advisor8
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=9}] run function ig:makecard/advisor9
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0,cardType=10}] run function ig:makecard/advisor10

#execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run scoreboard players operation @s buildType = @e[tag=advisorcard,type=marker,scores={deckPlace=0},limit=1] cardType

execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] as @e[tag=store2,tag=1] at @s run function ig:ent/building/break
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] as @e[tag=store2,tag=2] at @s run function ig:ent/building/break

execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] run scoreboard players operation @e[tag=store2,tag=1] buildType = @e[tag=advisorcard,type=marker,scores={deckPlace=0},limit=1] cardType
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] run scoreboard players operation @e[tag=store2,tag=2] buildType = @e[tag=advisorcard,type=marker,scores={deckPlace=0},limit=1] cardType

kill @e[tag=advisorcard,type=marker,scores={deckPlace=0}]
