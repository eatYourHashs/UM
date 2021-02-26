############################################################
# Description: Checks for recipes
# Creator: CreeperMagnet_
############################################################

tag @s remove um.undercrafter.assembled_output
data remove block ~ ~ ~ Items[{Slot:16b}]
scoreboard players set @s um.dummy 0
execute store result score @s um.dummy if entity @s[scores={um.dummy=0}] if block ~ ~ ~ barrel{Items:[{id:"minecraft:cobblestone"},{id:"minecraft:cobblestone"}]} run loot replace block ~ ~ ~ container.16 loot um:items/demon_bone
execute if entity @s[scores={um.dummy=1..}] run tag @s add um.undercrafter.assembled_output
execute if entity @s[scores={um.dummy=1..}] run data modify entity @s ArmorItems[3].tag.um.stored_output set from block ~ ~ ~ Items[{Slot:16b}]