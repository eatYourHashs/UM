############################################################
# Description: Processes the input for crafting
# Creator: CreeperMagnet_
############################################################

data remove storage um:storage root.temp
data modify storage um:storage root.temp.crafting_input_temp set value [[{id:"minecraft:air"},{id:"minecraft:air"},{id:"minecraft:air"}],[{id:"minecraft:air"},{id:"minecraft:air"},{id:"minecraft:air"}],[{id:"minecraft:air"},{id:"minecraft:air"},{id:"minecraft:air"}]]

execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify storage um:storage root.temp.crafting_input_temp[0][0] set from block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify storage um:storage root.temp.crafting_input_temp[0][1] set from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify storage um:storage root.temp.crafting_input_temp[0][2] set from block ~ ~ ~ Items[{Slot:4b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify storage um:storage root.temp.crafting_input_temp[1][0] set from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify storage um:storage root.temp.crafting_input_temp[1][1] set from block ~ ~ ~ Items[{Slot:12b}]
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify storage um:storage root.temp.crafting_input_temp[1][2] set from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify storage um:storage root.temp.crafting_input_temp[2][0] set from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify storage um:storage root.temp.crafting_input_temp[2][1] set from block ~ ~ ~ Items[{Slot:21b}]
execute if data block ~ ~ ~ Items[{Slot:22b}] run data modify storage um:storage root.temp.crafting_input_temp[2][2] set from block ~ ~ ~ Items[{Slot:22b}]

execute unless data storage um:storage root.temp.crafting_input_temp[2][].Slot run data remove storage um:storage root.temp.crafting_input_temp[2]
execute unless data storage um:storage root.temp.crafting_input_temp[0][].Slot run data remove storage um:storage root.temp.crafting_input_temp[0]
execute unless data storage um:storage root.temp.crafting_input_temp[0][].Slot run data remove storage um:storage root.temp.crafting_input_temp[0]
execute unless data storage um:storage root.temp.crafting_input_temp[-1][].Slot run data remove storage um:storage root.temp.crafting_input_temp[-1]
execute unless data storage um:storage root.temp.crafting_input_temp[][2].Slot run data remove storage um:storage root.temp.crafting_input_temp[][2]
execute unless data storage um:storage root.temp.crafting_input_temp[][0].Slot run data remove storage um:storage root.temp.crafting_input_temp[][0]
execute unless data storage um:storage root.temp.crafting_input_temp[][0].Slot run data remove storage um:storage root.temp.crafting_input_temp[][0]
execute unless data storage um:storage root.temp.crafting_input_temp[][-1].Slot run data remove storage um:storage root.temp.crafting_input_temp[][-1]

data remove storage um:storage root.temp.crafting_input_temp[][].Count
data remove storage um:storage root.temp.crafting_input_temp[][].Slot
data modify storage um:storage root.temp.crafting_input set value {0:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}],1:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}],2:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]}

data modify storage um:storage root.temp.crafting_input.0[0] merge from storage um:storage root.temp.crafting_input_temp[0][0]
data modify storage um:storage root.temp.crafting_input.0[1] merge from storage um:storage root.temp.crafting_input_temp[0][1]
data modify storage um:storage root.temp.crafting_input.0[2] merge from storage um:storage root.temp.crafting_input_temp[0][2]

data modify storage um:storage root.temp.crafting_input.1[0] merge from storage um:storage root.temp.crafting_input_temp[1][0]
data modify storage um:storage root.temp.crafting_input.1[1] merge from storage um:storage root.temp.crafting_input_temp[1][1]
data modify storage um:storage root.temp.crafting_input.1[2] merge from storage um:storage root.temp.crafting_input_temp[1][2]

data modify storage um:storage root.temp.crafting_input.2[0] merge from storage um:storage root.temp.crafting_input_temp[2][0]
data modify storage um:storage root.temp.crafting_input.2[1] merge from storage um:storage root.temp.crafting_input_temp[2][1]
data modify storage um:storage root.temp.crafting_input.2[2] merge from storage um:storage root.temp.crafting_input_temp[2][2]

execute if data storage um:storage root.temp.crafting_input{0:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} run data modify storage um:storage root.temp.crafting_input.0 set value []
execute if data storage um:storage root.temp.crafting_input{1:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} run data modify storage um:storage root.temp.crafting_input.1 set value []
execute if data storage um:storage root.temp.crafting_input{2:[{id:"minecraft:air",Slot:0b},{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:2b}]} run data modify storage um:storage root.temp.crafting_input.2 set value []

function um:block/undercrafter/crafting/recipe_checks
