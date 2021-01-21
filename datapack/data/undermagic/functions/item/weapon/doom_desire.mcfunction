particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.2 5
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 0.3 1
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score temp um.dummy matches 1 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} run tag @s add um.obliv_mat
execute if score temp um.dummy matches 1 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} run tag @s add um.aug_obliv
execute if entity @s[tag=um.obliv_mat] run scoreboard players set $math.in_0 um.dummy 280
execute if entity @s[tag=um.aug_obliv] run scoreboard players set $math.in_0 um.dummy 320
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
scoreboard players set @e[distance=..2] um.aw_mark 100
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:item/weapon/doom_desire
execute if score temp um.dummy matches 201.. run scoreboard players remove @s um.mana 10
execute if score temp um.dummy matches 201.. run scoreboard players add @s um.mana_used 10
execute if score temp um.dummy matches 201.. run scoreboard players set @s um.mana_cd 0
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0
execute if score temp um.dummy matches 201.. run tag @s remove um.obliv_mat
execute if score temp um.dummy matches 201.. run tag @s remove um.aug_oblit
