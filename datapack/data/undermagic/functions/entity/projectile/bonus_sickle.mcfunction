tp @s ^ ^ ^1
particle minecraft:sweep_attack
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
execute if score @s um.dummy matches 5.. run scoreboard players set $math.in_0 um.dummy 200
execute if score @s um.dummy matches 5.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 5.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 5.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 5.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak