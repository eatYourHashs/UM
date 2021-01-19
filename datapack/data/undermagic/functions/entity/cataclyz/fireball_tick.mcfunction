tp @s ^ ^ ^0.75
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 4
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
scoreboard players set $math.in_0 um.dummy 160
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute unless entity @s[tag=um.no_damage] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @a[distance=..2] run tag @s add um.no_damage
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak