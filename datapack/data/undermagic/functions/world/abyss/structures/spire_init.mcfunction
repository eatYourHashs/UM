
scoreboard players set $math.in_0 um.dummy 3
function undermagic:utils/random
scoreboard players operation spire_rand1 um.dummy = $math.out_0 um.dummy
scoreboard players add spire_rand1 um.dummy 1

scoreboard players set $math.in_0 um.dummy 3
function undermagic:utils/random
scoreboard players operation spire_rand2 um.dummy = $math.out_0 um.dummy
scoreboard players add spire_rand2 um.dummy 1

scoreboard players operation spire_rand1 um.dummy += spire_rand2 um.dummy
scoreboard players set spire_height um.dummy 8
scoreboard players operation spire_height um.dummy -= spire_rand1 um.dummy

execute positioned ~ 30 ~ run function undermagic:world/abyss/structures/spire_step
