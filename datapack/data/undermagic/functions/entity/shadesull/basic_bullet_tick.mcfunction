tp @s ~ ~-0.9 ~
execute if score difficulty um.dummy matches 1.. run tp @s ~ ~-0.2 ~
execute if score difficulty um.dummy matches 2.. run tp @s ~ ~-0.2 ~
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 4
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 120.. run kill @s
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 300
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 400
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
