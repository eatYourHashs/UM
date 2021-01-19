execute unless score @s um.dummy matches 80.. run tp @s ^ ^ ^0.2
execute unless score @s um.dummy matches 80.. run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.02 30
execute if score @s um.dummy matches 80 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 80 run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.1 300
execute if score @s um.dummy matches 80.. run particle minecraft:soul_fire_flame ~ ~ ~ 2 0.5 2 0.05 50
execute if score @s um.dummy matches 80.. run particle minecraft:dust 0 1 1 2 ~ ~ ~ 2 0.5 2 0.05 20
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=800..}] run kill @s
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute unless score @s um.dummy matches 80.. as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 80.. as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..6] run function undermagic:utils/damage_entity
execute unless score @s um.dummy matches 80.. if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong