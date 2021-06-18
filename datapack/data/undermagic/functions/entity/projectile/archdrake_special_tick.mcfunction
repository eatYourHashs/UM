tp @s ^ ^ ^1.5
particle minecraft:dust 0.749 1 0 1 ~ ~ ~ 1 1 1 0 40
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200.. run kill @s
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_0 um.dummy 480
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 3.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3,tag=!um.blood_minion] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 3.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:entity/generic/corroded_apply
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_0 um.dummy 240
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 3.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 3.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3,tag=um.blood_minion] run function undermagic:utils/damage_entity
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 10.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong