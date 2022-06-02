scoreboard players remove @e[tag=buildcard,type=marker] deckPlace 1

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run scoreboard players remove .BuildCards .data 1

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=1}] run function ig:makecard/build1
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=2}] run function ig:makecard/build2
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=3}] run function ig:makecard/build3
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=4}] run function ig:makecard/build4
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=5}] run function ig:makecard/build5
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=6}] run function ig:makecard/build6
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=7}] run function ig:makecard/build7
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=8}] run function ig:makecard/build8
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=9}] run function ig:makecard/build9
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=10}] run function ig:makecard/build10

#execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run scoreboard players operation @s buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] as @e[tag=store,tag=1] at @s run function ig:ent/building/break
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] as @e[tag=store,tag=2] at @s run function ig:ent/building/break

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] run scoreboard players operation @e[tag=store,tag=1] buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] run scoreboard players operation @e[tag=store,tag=2] buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType

kill @e[tag=buildcard,type=marker,scores={deckPlace=0}]
