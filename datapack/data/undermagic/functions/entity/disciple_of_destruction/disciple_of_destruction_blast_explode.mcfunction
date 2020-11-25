playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 0.5
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.2 200
particle minecraft:explosion
kill @s
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..4] run function undermagic:utils/damage_entity