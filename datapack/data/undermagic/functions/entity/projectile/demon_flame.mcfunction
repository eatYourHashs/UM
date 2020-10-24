tp @s ^ ^ ^1
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_0 um.dummy 40
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 10.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep