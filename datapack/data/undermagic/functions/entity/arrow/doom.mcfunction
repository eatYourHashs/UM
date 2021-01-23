particle minecraft:explosion_emitter
particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 100
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 100
scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..6] run function undermagic:utils/damage_entity
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 fire keep
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.5
playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1.5
kill @s