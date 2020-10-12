tp @s ^ ^ ^0.2
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 2
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run effect give @p instant_damage 1 2
execute if entity @p[distance=..2] run kill @s
