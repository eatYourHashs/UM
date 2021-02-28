############################################################
# Description: Checks for recipes
# Creator: CreeperMagnet_
############################################################

tag @s remove um.undercrafter.assembled_output
scoreboard players set @s um.dummy 0
execute store result score @s um.dummy if entity @s[scores={um.dummy=0}] if data storage um:storage root.temp{crafting_input:{0:[{id:"minecraft:bone",Slot:0b},{id:"minecraft:bone",Slot:1b}]}} unless data storage um:storage root.temp.crafting_input.0[2] unless data storage um:storage root.temp.crafting_input.1 unless data storage um:storage root.temp.crafting_input.2 run loot replace block ~ ~ ~ container.16 loot um:items/demon_bone
execute if entity @s[scores={um.dummy=0}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if entity @s[scores={um.dummy=1..}] run tag @s add um.undercrafter.assembled_output
data modify entity @s ArmorItems[3].tag.um.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={um.dummy=1..}] run data modify entity @s ArmorItems[3].tag.um.stored_output set from block ~ ~ ~ Items[{Slot:16b}]