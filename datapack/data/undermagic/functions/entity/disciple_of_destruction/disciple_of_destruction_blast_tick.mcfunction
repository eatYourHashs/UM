tp @s ^ ^ ^0.6
particle minecraft:flame ^ ^1 ^2 0.2 0.2 0.2 0 50
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 2
scoreboard players set $math.in_3 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute unless block ~ ~ ~ air run function undermagic:entity/disciple_of_destruction/disciple_of_destruction_blast_explode
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong