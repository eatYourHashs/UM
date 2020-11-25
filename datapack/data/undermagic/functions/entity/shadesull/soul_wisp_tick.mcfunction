tp @s ^ ^ ^0.6
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run particle minecraft:explosion
execute if entity @p[distance=..2] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 30
execute if entity @p[distance=..2] run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 160
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 200
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 20
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @p[distance=..2] run kill @s
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong
