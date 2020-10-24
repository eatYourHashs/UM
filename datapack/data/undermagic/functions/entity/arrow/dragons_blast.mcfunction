particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 100
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5,tag=!um_blood_minion] run function undermagic:utils/damage_entity
scoreboard players set $math.in_0 um.dummy 50
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5,tag=um_blood_minion] run function undermagic:utils/damage_entity
playsound minecraft:entity.generic.explode player @a ~ ~ ~
kill @s