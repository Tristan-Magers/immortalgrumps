execute if entity @s[scores={player_num=1}] run tellraw @a [{"selector":"@a[scores={player_num=1}]","bold":false},{"text":" WINS!!: ","color":"white","bold":true}]
execute if entity @s[scores={player_num=2}] run tellraw @a [{"selector":"@a[scores={player_num=2}]","bold":false},{"text":" WINS!!: ","color":"white","bold":true}]
execute if entity @s[scores={player_num=3}] run tellraw @a [{"selector":"@a[scores={player_num=3}]","bold":false},{"text":" WINS!!: ","color":"white","bold":true}]
execute if entity @s[scores={player_num=4}] run tellraw @a [{"selector":"@a[scores={player_num=4}]","bold":false},{"text":" WINS!!: ","color":"white","bold":true}]

function ig:game/end