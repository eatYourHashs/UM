tp @s ^ ^ ^1
particle minecraft:portal ~ ~0.7 ~ 0 0 0 0.01 1
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. run effect give @e[distance=..1,tag=!um_undead] instant_damage 1 0
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. run effect give @e[distance=..1,tag=um_undead] instant_health 1 0