playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.2 2
scoreboard players add @s um.dummy_three 1
execute if score difficulty um.dummy matches 0 if entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 200
execute if score difficulty um.dummy matches 1 if entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 250
execute if score difficulty um.dummy matches 2.. if entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 300
execute if score difficulty um.dummy matches 0 unless entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 300
execute if score difficulty um.dummy matches 1 unless entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 400
execute if score difficulty um.dummy matches 2.. unless entity @e[tag=um.elder_hand] run scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 20
execute unless entity @s[tag=um.no_damage] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @a[distance=..2] run tag @s add um.no_damage
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.03 2 normal
execute unless score @s um.dummy_three matches 100.. positioned ^ ^ ^0.5 run function undermagic:entity/elder/elder_ray_cast
execute if score @s um.dummy_three matches 100.. run tag @s remove um.no_damage