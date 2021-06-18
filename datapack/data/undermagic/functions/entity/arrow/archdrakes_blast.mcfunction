particle minecraft:dust 0.749 1 0 1 ~ ~ ~ 0.4 0.4 0.4 0 80
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5,tag=!um.blood_minion] run function undermagic:utils/damage_entity
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5] run function undermagic:entity/generic/corroded_apply
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5,tag=um.blood_minion] run function undermagic:utils/damage_entity
playsound minecraft:entity.generic.explode player @a ~ ~ ~
kill @s