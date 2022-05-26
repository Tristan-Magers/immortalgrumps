scoreboard players operation @e[tag=text] entID -= @e[tag=building,tag=selected,tag=store,limit=1] entID

tellraw @a [{"text":"["},{"text":"✰","color":"gold"},{"text":"] "},{"selector":"@a[tag=turn]"},{"text":" BOUGHT "},{"selector":"@e[tag=text,tag=name,scores={entID=0}]","color":"gray"},{"text":"\n    ("},{"selector":"@e[tag=chattext,tag=spent]"},{"text":")"}]
tellraw @s {"text":"Place the building in a free spot"}
kill @e[tag=chattext,tag=spent]

scoreboard players operation @s player_buy_build = @e[tag=building,tag=selected,tag=store,limit=1] buildType

scoreboard players operation @e[tag=text] entID += @e[tag=building,tag=selected,tag=store,limit=1] entID

execute as @e[tag=building,tag=selected,tag=store,limit=1] at @s run function game:ent/building/break

function game:player/check_actionable_place

tag @e remove seen_perm
tag @e remove selected

tag @s remove buying
tag @s add placing

clear @s barrier

function game:player/store_cards
function game:player/unstore_cards

function game:player/teleport