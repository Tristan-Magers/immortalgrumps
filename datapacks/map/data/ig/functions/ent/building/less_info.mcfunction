scoreboard players operation @e[tag=text] entID -= @s entID

execute if entity @s[tag=info] as @e[tag=text,scores={entID=0}] at @s run tp @s ~ ~-0.5 ~
execute at @s run tp @e[tag=health,tag=text,scores={entID=0}] ~ ~1.4 ~
kill @e[tag=text,scores={entID=0},tag=temptext]

scoreboard players operation @e[tag=text] entID += @s entID