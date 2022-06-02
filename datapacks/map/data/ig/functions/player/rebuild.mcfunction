tellraw @a [{"selector":"@a[tag=turn]"},{"text":" REBUILT","color":"blue"}]
tag @s add new_royal
scoreboard players set @s buildType 1000
execute as @e[tag=left,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999
execute as @e[tag=right,tag=!built] if score @s player_num = @e[tag=new_royal,limit=1] player_num run scoreboard players set @s buildType 999
