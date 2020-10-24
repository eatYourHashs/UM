tp @s ^ ^ ^1.4
particle minecraft:portal ~ ~0.7 ~ 0.2 0.2 0.2 0.1 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 50.. run kill @s
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. if entity @e[distance=..1,tag=!global.ignore] run particle explosion
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. if entity @e[distance=..1,tag=!global.ignore] run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.5
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity