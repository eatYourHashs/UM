tp @s ^ ^ ^1
execute if entity @s[tag=um_buffed_sickle] run tp @s ^ ^ ^0.5
particle minecraft:sweep_attack
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 60.. run kill @s
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_0 um.dummy 200
execute if score @s um.dummy matches 3.. if entity @s[tag=um_buffed_sickle] run scoreboard players set $math.in_0 um.dummy 250
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 3.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 3.. if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:entity/projectile/bonus_sickle_spawn
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 10.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak