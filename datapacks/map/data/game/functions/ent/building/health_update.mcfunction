scoreboard players operation @e[tag=text] entID -= @s entID

kill @e[tag=text,tag=health,scores={entID=0}]

scoreboard players operation @e[tag=text] entID += @s entID

execute if entity @s[scores={buildHealthMax=1,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/1"}'}

execute if entity @s[scores={buildHealthMax=2,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/2"}'}
execute if entity @s[scores={buildHealthMax=2,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/2"}'}

execute if entity @s[scores={buildHealthMax=3,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/3"}'}
execute if entity @s[scores={buildHealthMax=3,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/3"}'}
execute if entity @s[scores={buildHealthMax=3,buildHealth=3}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"3/3"}'}

execute if entity @s[scores={buildHealthMax=4,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/4"}'}
execute if entity @s[scores={buildHealthMax=4,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/4"}'}
execute if entity @s[scores={buildHealthMax=4,buildHealth=3}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"3/4"}'}
execute if entity @s[scores={buildHealthMax=4,buildHealth=4}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"4/4"}'}

execute if entity @s[scores={buildHealthMax=5,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/5"}'}
execute if entity @s[scores={buildHealthMax=5,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/5"}'}
execute if entity @s[scores={buildHealthMax=5,buildHealth=3}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"3/5"}'}
execute if entity @s[scores={buildHealthMax=5,buildHealth=4}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"4/5"}'}
execute if entity @s[scores={buildHealthMax=5,buildHealth=5}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"5/5"}'}

execute if entity @s[scores={buildHealthMax=6,buildHealth=1}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"1/6"}'}
execute if entity @s[scores={buildHealthMax=6,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"2/6"}'}
execute if entity @s[scores={buildHealthMax=6,buildHealth=3}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"3/6"}'}
execute if entity @s[scores={buildHealthMax=6,buildHealth=4}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"4/6"}'}
execute if entity @s[scores={buildHealthMax=6,buildHealth=5}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"5/6"}'}
execute if entity @s[scores={buildHealthMax=6,buildHealth=6}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"6/6"}'}

execute if entity @s[scores={buildHealthMax=7,buildHealth=2}] run summon armor_stand ~ ~1.4 ~ {Tags:["text","newtext","health"],CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"7/7"}'}

execute if entity @s[tag=info] run team join info @e[tag=newtext,tag=health]
execute if entity @s[tag=royal] run team join royal @e[tag=newtext,tag=health]

scoreboard players operation @e[tag=newtext] entID = @s entID
tag @e[tag=newtext] remove newtext