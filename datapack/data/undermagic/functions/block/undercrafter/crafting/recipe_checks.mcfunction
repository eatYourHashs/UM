############################################################
# Description: Checks for recipes
# Creator: CreeperMagnet_
############################################################

tag @s remove um.undercrafter.assembled_output
scoreboard players set @s um.dummy 0

function undermagic:block/undercrafter/crafting/recipes
execute if data storage um:storage root.temp.crafting_input{0:[{}],1:[{}],2:[{}]} unless data storage um:storage root.temp.crafting_input{0:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}],1:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}],2:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} if entity @s[scores={um.dummy=0}] run function undermagic:block/undercrafter/crafting/mirror_input
execute if data storage um:storage root.temp.crafting_input{0:[{}],1:[{}],2:[]} unless data storage um:storage root.temp.crafting_input{0:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}],1:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} if entity @s[scores={um.dummy=0}] run function undermagic:block/undercrafter/crafting/mirror_input
execute if data storage um:storage root.temp.crafting_input{0:[{}],1:[],2:[]} unless data storage um:storage root.temp.crafting_input{0:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} if entity @s[scores={um.dummy=0}] run function undermagic:block/undercrafter/crafting/mirror_input

execute if entity @s[scores={um.dummy=0}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if entity @s[scores={um.dummy=1..}] run tag @s add um.undercrafter.assembled_output
data modify entity @s ArmorItems[3].tag.um.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={um.dummy=1..}] run data modify entity @s ArmorItems[3].tag.um.stored_output set from block ~ ~ ~ Items[{Slot:16b}]
