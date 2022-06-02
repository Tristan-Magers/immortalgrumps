scoreboard players operation @e[tag=glowbox] entID -= @s entID

tp @e[tag=glowbox,scores={entID=0}] ~ ~-10000 ~
kill @e[tag=glowbox,scores={entID=0}]

scoreboard players operation @e[tag=glowbox] entID += @s entID