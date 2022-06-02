summon shulker ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowinig:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["glowbox","newglow"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b},{Id:24b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

scoreboard players operation @e[tag=newglow] entID = @s entID

tag @e[tag=newglow] remove newglow

function ig:ent/building/glow_color