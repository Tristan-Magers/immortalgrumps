scoreboard players remove @e[tag=minion,type=marker] deckPlace 1

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run scoreboard players remove .MinionsCards .data 1

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=1}] run function game:givecard/hero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=2}] run function game:givecard/coolhero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=3}] run function game:givecard/leghero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=4}] run function game:givecard/monster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=5}] run function game:givecard/coolmonster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=6}] run function game:givecard/legmonster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=7}] run function game:givecard/assassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=8}] run function game:givecard/coolassassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=9}] run function game:givecard/legassassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=10}] run function game:givecard/trap

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=1}] run function game:makecard/minion1
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=2}] run function game:makecard/minion2
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=3}] run function game:makecard/minion3
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=4}] run function game:makecard/minion4
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=5}] run function game:makecard/minion5
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=6}] run function game:makecard/minion6
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=7}] run function game:makecard/minion7
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=8}] run function game:makecard/minion8
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=9}] run function game:makecard/minion9
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=10}] run function game:makecard/minion10

kill @e[tag=minion,type=marker,scores={deckPlace=0}]

function game:player/store_cards
function game:player/unstore_cards

scoreboard players add @e[tag=minion,type=marker] deckPlace 0

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=minion,type=marker,scores={deckPlace=0}] run function game:makecard/newminion