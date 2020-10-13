tp @s ~ ~-0.5 ~
scoreboard players set $math.in_0 um.dummy 80
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2] run function undermagic:utils/damage_entity
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s