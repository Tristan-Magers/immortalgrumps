# no Dragons
execute if entity @s[tag=!dragon1,tag=!dragon2] run function ig:player/steal/end_take

# Dragon advisor effect
execute if entity @s[tag=dragon1] as @e[tag=gems,tag=take] run tellraw @a [{"text":"Steal +1 Gem (Dragon)","color":"white"}]
execute if entity @s[tag=dragon2,tag=!dragon1] as @e[tag=gems,tag=take] run tellraw @a [{"text":"Steal +1 Gem (Dragon)","color":"white"}]

execute if entity @s[tag=dragon1] as @e[tag=gems,tag=take] run function ig:ent/gem/take
execute if entity @s[tag=dragon2,tag=!dragon1] as @e[tag=gems,tag=take] run function ig:ent/gem/take

tag @s[tag=dragon2,tag=!dragon1] remove dragon2
tag @s[tag=dragon1] remove dragon1