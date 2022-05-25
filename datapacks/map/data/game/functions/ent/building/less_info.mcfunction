scoreboard players operation @e[tag=text] entID -= @s entID

execute if entity @s[tag=info] as @e[tag=text,scores={entID=0}] at @s run tp @s ~ ~-0.5 ~
kill @e[tag=text,scores={entID=0},tag=temptext]

scoreboard players operation @e[tag=text] entID += @s entID