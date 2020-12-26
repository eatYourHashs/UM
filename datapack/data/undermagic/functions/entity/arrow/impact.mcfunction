particle minecraft:explosion_emitter
scoreboard players set $math.in_0 um.dummy 300
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..6] run function undermagic:utils/damage_entity
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.5
kill @s