tp @s ^ ^ ^1
particle minecraft:portal ~ ~0.7 ~ 0 0 0 0.01 1
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
scoreboard players set $math.in_0 um.dummy 40
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 10.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak