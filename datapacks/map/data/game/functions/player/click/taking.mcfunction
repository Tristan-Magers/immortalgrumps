execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run function game:player/steal/gem1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run function game:player/steal/gem2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run function game:player/steal/gem3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] run function game:player/steal/gem4

execute if entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run function game:player/steal/no_gem

scoreboard players set @s click 0