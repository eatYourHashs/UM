tp @s ^ ^ ^0.6
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run effect give @p instant_damage 1 1
