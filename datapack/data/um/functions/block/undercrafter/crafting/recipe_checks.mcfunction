############################################################
# Description: Checks for recipes
# Creator: CreeperMagnet_
############################################################

tag @s remove um.undercrafter.assembled_output
scoreboard players set @s um.dummy 0
execute store result score @s um.dummy if entity @s[scores={um.dummy=0}] if data storage um:storage root.temp{crafting_input:{0:[{id:"minecraft:bone",Slot:0b},{id:"minecraft:bone",Slot:1b},{id:"minecraft:air",Slot:2b}],1:[],2:[]}} run loot replace block ~ ~ ~ container.16 loot um:items/demon_bone
execute store result score @s um.dummy if entity @s[scores={um.dummy=0}] if data storage um:storage root.temp{crafting_input:{0:[{id:"minecraft:leather",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:leather",Slot:2b}],1:[{id:"minecraft:leather",Slot:0b},{id:"minecraft:leather",Slot:1b},{id:"minecraft:leather",Slot:2b}],2:[{id:"minecraft:leather",Slot:0b},{id:"minecraft:leather",Slot:1b},{id:"minecraft:leather",Slot:2b}]}} run replaceitem block ~ ~ ~ container.16 minecraft:leather_chestplate



execute if entity @s[scores={um.dummy=0}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if entity @s[scores={um.dummy=1..}] run tag @s add um.undercrafter.assembled_output
data modify entity @s ArmorItems[3].tag.um.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={um.dummy=1..}] run data modify entity @s ArmorItems[3].tag.um.stored_output set from block ~ ~ ~ Items[{Slot:16b}]
