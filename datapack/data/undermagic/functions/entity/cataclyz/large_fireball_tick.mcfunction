execute facing entity @p feet run tp @s ^ ^ ^0.15
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.02 30
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=400..}] run kill @s
scoreboard players set $math.in_0 um.dummy 250
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute unless entity @s[tag=um.no_damage] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @a[distance=..2] run tag @s add um.no_damage
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong