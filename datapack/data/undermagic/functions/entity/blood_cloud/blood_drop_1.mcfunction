tp @s ~ ~-0.5 ~
scoreboard players set $math.in_0 um.dummy 50
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak