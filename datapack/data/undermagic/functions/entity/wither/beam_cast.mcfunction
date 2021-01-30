scoreboard players add temp um.dummy 1
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 150
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless score temp um.dummy matches 40.. positioned ^ ^ ^0.5 run function undermagic:entity/wither/beam_cast
execute if score temp um.dummy matches 40.. run kill @s
