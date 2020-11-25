tp @s ^ ^ ^1
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200.. run kill @s
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_0 um.dummy 50
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 10.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 10.. run scoreboard players set @e[distance=..2,tag=!global.ignore] um.aw_mark 20
execute if score @s um.dummy matches 10.. if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run kill @s
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 10.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak