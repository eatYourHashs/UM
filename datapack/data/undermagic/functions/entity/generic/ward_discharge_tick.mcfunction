scoreboard players set $math.in_0 um.dummy 2000
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[type=#undermagic:hostile,distance=..16,tag=!global.ignore] run function undermagic:utils/damage_entity
kill @s