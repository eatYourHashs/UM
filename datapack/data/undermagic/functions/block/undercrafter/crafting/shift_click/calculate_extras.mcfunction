############################################################
# Description: Calculates the number of extra items that need to be created
# Creator: CreeperMagnet_
############################################################

# Then, remove the required number of output slots
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players operation @s um.dummy -= um.temp_2 um.dummy

# um.temp_2 now stores the number of extra items that need to be spawned, and in turn, the count that needs to be removed from each slot
# Recreate the output nbt so it can be used to create the extras
function undermagic:block/undercrafter/crafting/recipe_checks
data modify storage um:storage root.temp.item set from block ~ ~ ~ Items[{Slot:16b}]
data remove block ~ ~ ~ Items[{Slot:16b}]

execute as @p[distance=..12,tag=um.inside_undercrafter_gui,tag=um.shift_clicked] at @s run function undermagic:block/undercrafter/crafting/shift_click/spawn_extra_items
data modify entity @s ArmorItems[3].tag.um.stored_output set value {Slot:16b}
data modify entity @s ArmorItems[3].tag.um.stored_barrel_data set from block ~ ~ ~ Items
