particle minecraft:end_rod
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2,scores={um.oathbow_mark=1..,um.invuln=10..}] run function undermagic:utils/damage_entity
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2,scores={um.oathbow_mark=1..,um.invuln=10..}] run function undermagic:utils/damage_entity
scoreboard players set @e[distance=..2,tag=!global.ignore] um.oathbow_mark 100
execute if entity @e[distance=..2,tag=!global.ignore,type=!player] run scoreboard players set temp um.dummy 202
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:entity/projectile/oathbow
