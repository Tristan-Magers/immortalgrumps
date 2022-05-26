scoreboard players remove @e[tag=buildcard,type=marker] deckPlace 1

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run scoreboard players remove .BuildCards .data 1

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=1}] run function game:makecard/build1
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=2}] run function game:makecard/build2
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=3}] run function game:makecard/build3
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=4}] run function game:makecard/build4
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=5}] run function game:makecard/build5
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=6}] run function game:makecard/build6
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=7}] run function game:makecard/build7
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=8}] run function game:makecard/build8
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=9}] run function game:makecard/build9
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0,cardType=10}] run function game:makecard/build10

#execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run scoreboard players operation @s buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] as @e[tag=store,tag=1] at @s run function game:ent/building/break
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] as @e[tag=store,tag=2] at @s run function game:ent/building/break

execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=1] run scoreboard players operation @e[tag=store,tag=1] buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute if entity @s[tag=2] run scoreboard players operation @e[tag=store,tag=2] buildType = @e[tag=buildcard,type=marker,scores={deckPlace=0},limit=1] cardType

kill @e[tag=buildcard,type=marker,scores={deckPlace=0}]
