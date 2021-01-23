playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ^ ^ ^ 1 1
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 400
scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=0.05..8] run function undermagic:utils/damage_entity