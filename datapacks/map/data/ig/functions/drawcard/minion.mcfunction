scoreboard players remove @e[tag=minion,type=marker] deckPlace 1

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run scoreboard players remove .MinionsCards .data 1

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=1}] run function ig:givecard/hero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=2}] run function ig:givecard/coolhero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=3}] run function ig:givecard/leghero
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=4}] run function ig:givecard/monster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=5}] run function ig:givecard/coolmonster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=6}] run function ig:givecard/legmonster
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=7}] run function ig:givecard/assassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=8}] run function ig:givecard/coolassassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=9}] run function ig:givecard/legassassin
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=10}] run function ig:givecard/trap

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=1}] run function ig:makecard/minion1
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=2}] run function ig:makecard/minion2
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=3}] run function ig:makecard/minion3
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=4}] run function ig:makecard/minion4
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=5}] run function ig:makecard/minion5
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=6}] run function ig:makecard/minion6
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=7}] run function ig:makecard/minion7
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=8}] run function ig:makecard/minion8
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=9}] run function ig:makecard/minion9
execute if entity @e[tag=minion,type=marker,scores={deckPlace=0,cardType=10}] run function ig:makecard/minion10

kill @e[tag=minion,type=marker,scores={deckPlace=0}]

function ig:player/store_cards
function ig:player/unstore_cards

scoreboard players add @e[tag=minion,type=marker] deckPlace 0

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=minion,type=marker,scores={deckPlace=0}] run function ig:makecard/newminion