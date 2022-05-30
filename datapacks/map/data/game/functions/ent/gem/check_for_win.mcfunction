scoreboard players set @s gem_count 0

scoreboard players add @s[scores={gem1=1..}] gem_count 1
scoreboard players add @s[scores={gem2=1..}] gem_count 1
scoreboard players add @s[scores={gem3=1..}] gem_count 1
scoreboard players add @s[scores={gem4=1..}] gem_count 1

execute if score .players .game = .1 .num if entity @s[scores={gem_count=2..,player_num=1,gem3=3..}] run function game:ent/gem/win
execute if score .players .game = .1 .num if entity @s[scores={gem_count=2..,player_num=3,gem1=3..}] run function game:ent/gem/win

execute if score .players .game = .2 .num if entity @s[scores={gem_count=2..,player_num=1,gem3=3..}] run function game:ent/gem/win
execute if score .players .game = .2 .num if entity @s[scores={gem_count=2..,player_num=3,gem1=3..}] run function game:ent/gem/win
execute if score .players .game = .3 .num if entity @s[scores={gem_count=3..}] run function game:ent/gem/win
execute if score .players .game = .4 .num if entity @s[scores={gem_count=4..}] run function game:ent/gem/win