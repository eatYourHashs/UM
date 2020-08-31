tp @s ~ ~-0.5 ~
effect give @e[distance=..2,tag=!um_undead] instant_damage 1 0 true
effect give @e[distance=..2,tag=um_undead] instant_health 1 0 true
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s