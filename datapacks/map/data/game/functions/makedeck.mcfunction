#
kill @e[type=marker]
scoreboard players set .MinionsCards .data 0
scoreboard players set .BuildCards .data 0
scoreboard players set .AdvisorCards .data 0

#minion deck
function game:makecard/minion1
function game:makecard/minion1
function game:makecard/minion1
function game:makecard/minion1
function game:makecard/minion1
function game:makecard/minion1
function game:makecard/minion1

function game:makecard/minion2
function game:makecard/minion2
function game:makecard/minion2
function game:makecard/minion2
function game:makecard/minion2
function game:makecard/minion2
function game:makecard/minion2

function game:makecard/minion3
function game:makecard/minion3
function game:makecard/minion3
function game:makecard/minion3
function game:makecard/minion3
function game:makecard/minion3
function game:makecard/minion3

function game:makecard/minion4
function game:makecard/minion4
function game:makecard/minion4
function game:makecard/minion4
function game:makecard/minion4
function game:makecard/minion4
function game:makecard/minion4

function game:makecard/minion5
function game:makecard/minion5
function game:makecard/minion5
function game:makecard/minion5
function game:makecard/minion5
function game:makecard/minion5
function game:makecard/minion5

function game:makecard/minion6
function game:makecard/minion6
function game:makecard/minion6
function game:makecard/minion6
function game:makecard/minion6
function game:makecard/minion6
function game:makecard/minion6

function game:makecard/minion7
function game:makecard/minion7
function game:makecard/minion7
function game:makecard/minion7
function game:makecard/minion7
function game:makecard/minion7
function game:makecard/minion7

function game:makecard/minion8
function game:makecard/minion8
function game:makecard/minion8
function game:makecard/minion8
function game:makecard/minion8
function game:makecard/minion8
function game:makecard/minion8

function game:makecard/minion9
function game:makecard/minion9
function game:makecard/minion9
function game:makecard/minion9
function game:makecard/minion9
function game:makecard/minion9
function game:makecard/minion9

function game:makecard/minion10
function game:makecard/minion10
function game:makecard/minion10
function game:makecard/minion10
function game:makecard/minion10
function game:makecard/minion10
function game:makecard/minion10

#building deck
function game:makecard/build1
function game:makecard/build1
function game:makecard/build1
function game:makecard/build1
function game:makecard/build1

function game:makecard/build2
function game:makecard/build2
function game:makecard/build2
function game:makecard/build2
function game:makecard/build2

function game:makecard/build3
function game:makecard/build3
function game:makecard/build3
function game:makecard/build3
function game:makecard/build3

function game:makecard/build7
function game:makecard/build7
function game:makecard/build7
function game:makecard/build7
function game:makecard/build7

function game:makecard/build8
function game:makecard/build8
function game:makecard/build8
function game:makecard/build8
function game:makecard/build8

function game:makecard/build9
function game:makecard/build9
function game:makecard/build9
function game:makecard/build9
function game:makecard/build9

#Shadow Cult (note: more than average)
function game:makecard/build10
function game:makecard/build10
function game:makecard/build10
function game:makecard/build10
function game:makecard/build10

function game:makecard/build10
function game:makecard/build10

#advisor deck
function game:makecard/advisor1
function game:makecard/advisor1
function game:makecard/advisor1
function game:makecard/advisor1

function game:makecard/advisor2
function game:makecard/advisor2
function game:makecard/advisor2
function game:makecard/advisor2

function game:makecard/advisor3
function game:makecard/advisor3
function game:makecard/advisor3
function game:makecard/advisor3

function game:makecard/advisor4
function game:makecard/advisor4
function game:makecard/advisor4
function game:makecard/advisor4

function game:makecard/advisor5
function game:makecard/advisor5
function game:makecard/advisor5
function game:makecard/advisor5

function game:makecard/advisor6
function game:makecard/advisor6
function game:makecard/advisor6
function game:makecard/advisor6

#Trainer, design issues
#function game:makecard/advisor7
#function game:makecard/advisor7
#function game:makecard/advisor7
#function game:makecard/advisor7

#Dragon
function game:makecard/advisor8
function game:makecard/advisor8
function game:makecard/advisor8
function game:makecard/advisor8

#Traitor (note: more than average)
function game:makecard/advisor9
function game:makecard/advisor9
function game:makecard/advisor9
function game:makecard/advisor9

function game:makecard/advisor9
function game:makecard/advisor9

#Bargainer
function game:makecard/advisor10
function game:makecard/advisor10
function game:makecard/advisor10
function game:makecard/advisor10

#shuffle and sort cards
scoreboard players add @e[tag=minion,type=marker] deckPlace 0
scoreboard players add @e[tag=buildcard,type=marker] deckPlace 0
scoreboard players add @e[tag=advisorcard,type=marker] deckPlace 0

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=minion,type=marker,scores={deckPlace=0}] run function game:makecard/newminion
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=buildcard,type=marker,scores={deckPlace=0}] run function game:makecard/newbuild
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=advisorcard,type=marker,scores={deckPlace=0}] run function game:makecard/newadvisor
