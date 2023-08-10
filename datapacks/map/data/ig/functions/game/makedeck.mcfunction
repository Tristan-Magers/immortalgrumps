#
kill @e[type=marker]
scoreboard players set .MinionsCards .data 0
scoreboard players set .BuildCards .data 0
scoreboard players set .AdvisorCards .data 0

#minion deck
function ig:makecard/minion1
function ig:makecard/minion1
function ig:makecard/minion1
function ig:makecard/minion1
function ig:makecard/minion1
function ig:makecard/minion1
function ig:makecard/minion1

function ig:makecard/minion2
function ig:makecard/minion2
function ig:makecard/minion2
function ig:makecard/minion2
function ig:makecard/minion2
function ig:makecard/minion2
function ig:makecard/minion2

function ig:makecard/minion3
function ig:makecard/minion3
function ig:makecard/minion3
function ig:makecard/minion3
function ig:makecard/minion3
function ig:makecard/minion3
function ig:makecard/minion3

function ig:makecard/minion4
function ig:makecard/minion4
function ig:makecard/minion4
function ig:makecard/minion4
function ig:makecard/minion4
function ig:makecard/minion4
function ig:makecard/minion4

function ig:makecard/minion5
function ig:makecard/minion5
function ig:makecard/minion5
function ig:makecard/minion5
function ig:makecard/minion5
function ig:makecard/minion5
function ig:makecard/minion5

function ig:makecard/minion6
function ig:makecard/minion6
function ig:makecard/minion6
function ig:makecard/minion6
function ig:makecard/minion6
function ig:makecard/minion6
function ig:makecard/minion6

function ig:makecard/minion7
function ig:makecard/minion7
function ig:makecard/minion7
function ig:makecard/minion7
function ig:makecard/minion7
function ig:makecard/minion7
function ig:makecard/minion7

function ig:makecard/minion8
function ig:makecard/minion8
function ig:makecard/minion8
function ig:makecard/minion8
function ig:makecard/minion8
function ig:makecard/minion8
function ig:makecard/minion8

function ig:makecard/minion9
function ig:makecard/minion9
function ig:makecard/minion9
function ig:makecard/minion9
function ig:makecard/minion9
function ig:makecard/minion9
function ig:makecard/minion9

function ig:makecard/minion10
function ig:makecard/minion10
function ig:makecard/minion10
function ig:makecard/minion10
function ig:makecard/minion10
function ig:makecard/minion10
function ig:makecard/minion10

###building deck

# tower (Less than normal)
function ig:makecard/build1
function ig:makecard/build1
function ig:makecard/build1
function ig:makecard/build1

# town (More than normal) (half due to party town)
function ig:makecard/build2
function ig:makecard/build2
function ig:makecard/build2
function ig:makecard/build2

# camp
function ig:makecard/build3
function ig:makecard/build3
function ig:makecard/build3
function ig:makecard/build3
function ig:makecard/build3

# Gambling Town (Less than normal)
function ig:makecard/build4
function ig:makecard/build4
function ig:makecard/build4
function ig:makecard/build4

# the pit
function ig:makecard/build5
function ig:makecard/build5
function ig:makecard/build5
function ig:makecard/build5
function ig:makecard/build5

# party town (second half of town count +1)
function ig:makecard/build6
function ig:makecard/build6
function ig:makecard/build6
function ig:makecard/build6

# Forest Village (less than normal)
function ig:makecard/build7
function ig:makecard/build7
function ig:makecard/build7
function ig:makecard/build7

# Barbaric Village
function ig:makecard/build8
function ig:makecard/build8
function ig:makecard/build8
function ig:makecard/build8
function ig:makecard/build8

# blacksmith (less than normal)
function ig:makecard/build9
function ig:makecard/build9
function ig:makecard/build9
function ig:makecard/build9

#Shadow Cult (note: more than average) (~16%)
function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10

function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10
function ig:makecard/build10

# Archer Hideout (less than normal)
function ig:makecard/build11
function ig:makecard/build11
function ig:makecard/build11
function ig:makecard/build11

###advisor deck

#mob
function ig:makecard/advisor1
function ig:makecard/advisor1
function ig:makecard/advisor1
function ig:makecard/advisor1

function ig:makecard/advisor2
function ig:makecard/advisor2
function ig:makecard/advisor2
function ig:makecard/advisor2

# Builder (less than normal)
function ig:makecard/advisor3
function ig:makecard/advisor3
function ig:makecard/advisor3

function ig:makecard/advisor4
function ig:makecard/advisor4
function ig:makecard/advisor4
function ig:makecard/advisor4

# Body Double (less than normal)
function ig:makecard/advisor5
function ig:makecard/advisor5
function ig:makecard/advisor5

function ig:makecard/advisor6
function ig:makecard/advisor6
function ig:makecard/advisor6
function ig:makecard/advisor6

# Celebrity
function ig:makecard/advisor7
function ig:makecard/advisor7
function ig:makecard/advisor7
function ig:makecard/advisor7

# Dragon
function ig:makecard/advisor8
function ig:makecard/advisor8
function ig:makecard/advisor8
function ig:makecard/advisor8

# Traitor (note: more than average)
function ig:makecard/advisor9
function ig:makecard/advisor9
function ig:makecard/advisor9
function ig:makecard/advisor9

function ig:makecard/advisor9
function ig:makecard/advisor9
function ig:makecard/advisor9
function ig:makecard/advisor9

# Bargainer (less than normal)
function ig:makecard/advisor10
function ig:makecard/advisor10
function ig:makecard/advisor10

# Hunter
function ig:makecard/advisor11
function ig:makecard/advisor11
function ig:makecard/advisor11
function ig:makecard/advisor11
function ig:makecard/advisor11

#shuffle and sort cards
scoreboard players add @e[tag=minion,type=marker] deckPlace 0
scoreboard players add @e[tag=buildcard,type=marker] deckPlace 0
scoreboard players add @e[tag=advisorcard,type=marker] deckPlace 0

execute if entity @e[tag=minion,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=minion,type=marker,scores={deckPlace=0}] run function ig:makecard/newminion
execute if entity @e[tag=buildcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=buildcard,type=marker,scores={deckPlace=0}] run function ig:makecard/newbuild
execute if entity @e[tag=advisorcard,type=marker,scores={deckPlace=0}] run execute as @e[limit=1,sort=random,tag=advisorcard,type=marker,scores={deckPlace=0}] run function ig:makecard/newadvisor
