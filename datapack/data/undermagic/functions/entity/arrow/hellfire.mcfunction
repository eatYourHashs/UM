particle minecraft:flame ~ ~ ~ 0 0 0 0.1 100
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1
kill @s