tp @s ^ ^ ^1
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute positioned ~ ~-1 ~ if entity @p[distance=..2] run effect give @p instant_damage 1 1
