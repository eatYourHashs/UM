tp @s ^ ^ ^1
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,tag=!um_undead] instant_damage 1 0
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,tag=um_undead] instant_health 1 0
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep