particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 1 1
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:item/weapon/augis_ultra
execute if score temp um.dummy matches 201.. run scoreboard players set @s um.mana_used 0
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0
