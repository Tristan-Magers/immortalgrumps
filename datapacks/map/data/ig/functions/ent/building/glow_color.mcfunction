scoreboard players operation @e[tag=glowbox] entID -= @s entID

team leave @e[tag=glowbox,scores={entID=0}]
execute if entity @s[scores={buildType=..0}] run team join noaction @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=royal] run team join royal @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=store] run team join store @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=store2] run team join store @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=selected] run team join selected @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=!action_build,tag=!store] run team join noaction @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=target] run team join target @e[tag=glowbox,scores={entID=0}]

execute if entity @a[tag=turn,tag=placing] run team join noaction @e[tag=glowbox,scores={entID=0}]
execute if entity @s[scores={buildType=..0},tag=action_build] if entity @a[tag=turn,tag=placing] run team join selected @e[tag=glowbox,scores={entID=0}]

execute if entity @a[tag=turn,tag=placing_adv] run team join noaction @e[tag=glowbox,scores={entID=0}]
execute if entity @s[tag=action_build] if entity @a[tag=turn,tag=placing_adv] run team join selected @e[tag=glowbox,scores={entID=0}]

execute if entity @s[tag=target,tag=target_seen] run team join royal @e[tag=glowbox,scores={entID=0}]

scoreboard players operation @e[tag=glowbox] entID += @s entID