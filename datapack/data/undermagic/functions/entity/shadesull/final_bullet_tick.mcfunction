tp @s ^ ^ ^0.2
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 2
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 240
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 280
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 320
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @p[distance=..2] run kill @s
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong
