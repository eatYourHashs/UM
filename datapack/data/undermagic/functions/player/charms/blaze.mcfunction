particle minecraft:flame ~ ~1 ~ 1 0.1 1 0.05 30
execute if score @s um.blaze_charms matches 1 run scoreboard players set $math.in_0 um.dummy 70
execute if score @s um.blaze_charms matches 2 run scoreboard players set $math.in_0 um.dummy 110
execute if score @s um.blaze_charms matches 3 run scoreboard players set $math.in_0 um.dummy 150
execute if score @s um.blaze_charms matches 4.. run scoreboard players set $math.in_0 um.dummy 190
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute as @e[distance=0.1..4] at @s run function undermagic:utils/damage_entity
