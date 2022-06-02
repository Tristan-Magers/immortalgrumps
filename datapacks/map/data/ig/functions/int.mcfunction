#
scoreboard objectives remove .data

#
scoreboard objectives add leave minecraft.custom:minecraft.leave_game

scoreboard objectives add gem_count dummy

scoreboard objectives add player_attack dummy
scoreboard objectives add player_num dummy
scoreboard objectives add player_price dummy
scoreboard objectives add player_buy_build dummy
scoreboard objectives add player_card_select dummy
scoreboard objectives add player_card_opponent dummy
scoreboard objectives add player_damage dummy

scoreboard objectives add deckPlace dummy
scoreboard objectives add deckType dummy
scoreboard objectives add cardType dummy

scoreboard objectives add buildCost dummy
scoreboard objectives add buildType dummy
scoreboard objectives add buildHealth dummy
scoreboard objectives add buildHealthMax dummy

scoreboard objectives add ID dummy
scoreboard objectives add entID dummy
scoreboard objectives add lookID dummy

scoreboard objectives add card1 dummy
scoreboard objectives add card2 dummy
scoreboard objectives add card3 dummy
scoreboard objectives add card4 dummy
scoreboard objectives add card5 dummy
scoreboard objectives add card6 dummy
scoreboard objectives add card7 dummy
scoreboard objectives add card8 dummy
scoreboard objectives add card9 dummy
scoreboard objectives add card10 dummy

scoreboard objectives add gems dummy
scoreboard objectives add gem1 dummy
scoreboard objectives add gem2 dummy
scoreboard objectives add gem3 dummy
scoreboard objectives add gem4 dummy
scoreboard objectives add gem5 dummy
scoreboard objectives add gem6 dummy
scoreboard objectives add gem7 dummy
scoreboard objectives add gem8 dummy

scoreboard objectives add gem1t dummy
scoreboard objectives add gem2t dummy
scoreboard objectives add gem3t dummy
scoreboard objectives add gem4t dummy
scoreboard objectives add gem5t dummy
scoreboard objectives add gem6t dummy
scoreboard objectives add gem7t dummy
scoreboard objectives add gem8t dummy

scoreboard objectives add t1 dummy
scoreboard objectives add t2 dummy
scoreboard objectives add t3 dummy
scoreboard objectives add t4 dummy
scoreboard objectives add t5 dummy
scoreboard objectives add t6 dummy
scoreboard objectives add t7 dummy

scoreboard objectives add .temp dummy
scoreboard objectives add .num dummy
scoreboard objectives add .game dummy
scoreboard objectives add .data dummy

scoreboard players set .entID .data 1
scoreboard players set .ID .data 1

scoreboard objectives add click minecraft.used:minecraft.paper

scoreboard players set .0 .num 0
scoreboard players set .1 .num 1
scoreboard players set .2 .num 2
scoreboard players set .3 .num 3
scoreboard players set .4 .num 4

scoreboard players set .1200 .num 1200

#
team add info
team modify info color aqua

team add royal
team modify royal color gold

team add selected
team modify selected color green

team add store
team modify store color dark_aqua

team add noaction
team modify noaction color gray

team add target
team modify target color red

team add player1
team modify player1 color green

team add player2
team modify player2 color yellow

team add player3
team modify player3 color aqua

team add player4
team modify player4 color red