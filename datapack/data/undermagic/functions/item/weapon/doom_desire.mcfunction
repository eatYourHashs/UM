particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.2 5
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 0.3 1
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
scoreboard players set @e[distance=..2] um.aw_mark 100
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:item/weapon/doom_desire
execute if score temp um.dummy matches 201.. run scoreboard players remove @s um.mana 10
execute if score temp um.dummy matches 201.. run scoreboard players set @s um.mana_cd 0
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0
