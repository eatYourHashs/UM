particle minecraft:flame ^ ^1 ^2.5 0.5 0.2 0.5 0.1 30
particle minecraft:sweep_attack ^ ^0.6 ^2.5 0 0 0 0 1
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_1 um.dummy 0
execute positioned ^ ^0.4 ^2.1 as @e[distance=..2,tag=!global.ignore] run function undermagic:utils/damage_entity
playsound minecraft:entity.player.attack.sweep player @a ^ ^1 ^1 1 0.7
playsound minecraft:entity.blaze.shoot player @a ^ ^1 ^1 1 1.3
loot replace entity @s weapon.mainhand loot undermagic:items/longsword_demonic_steel
replaceitem entity @s weapon.offhand minecraft:air
