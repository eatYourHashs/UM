execute store result entity @s damage double 0.1 run scoreboard players get temp um.dummy
scoreboard players operation $math.temp_x um.dummy = a um.dummy
scoreboard players operation $math.temp_y um.dummy = b um.dummy
scoreboard players operation $math.temp_z um.dummy = c um.dummy
scoreboard players operation $math.temp_x um.dummy *= $cons.100 um.dummy
scoreboard players operation $math.temp_y um.dummy *= $cons.100 um.dummy
scoreboard players operation $math.temp_z um.dummy *= $cons.100 um.dummy
scoreboard players set $math.in_0 um.dummy 20
function undermagic:utils/random
scoreboard players add $math.out_0 90
scoreboard players operation $math.temp_x um.dummy /= $math.out_0 um.dummy
function undermagic:utils/random
scoreboard players add $math.out_0 90
scoreboard players operation $math.temp_y um.dummy /= $math.out_0 um.dummy
function undermagic:utils/random
scoreboard players add $math.out_0 90
scoreboard players operation $math.temp_z um.dummy /= $math.out_0 um.dummy
execute store result entity @s Motion[0] double 0.000005 run scoreboard players get $math.temp_x um.dummy
execute store result entity @s Motion[1] double 0.000005 run scoreboard players get $math.temp_y um.dummy
execute store result entity @s Motion[2] double 0.000005 run scoreboard players get $math.temp_z um.dummy
tag @s remove um.crucible_sub_proc