############################################################
# Description: Exports invalid items
# Creator: CreeperMagnet_
############################################################

data remove storage um:storage root.temp
data modify storage um:storage root.temp.Items set value []

data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:4b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:20b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:21b}]
data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:22b}]
execute if entity @s[tag=um.undercrafter.assembled_output] run data modify storage um:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:16b}]

data remove block ~ ~ ~ Items[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:4b}]
data remove block ~ ~ ~ Items[{Slot:11b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:13b}]
data remove block ~ ~ ~ Items[{Slot:20b}]
data remove block ~ ~ ~ Items[{Slot:21b}]
data remove block ~ ~ ~ Items[{Slot:22b}]
execute if entity @s[tag=um.undercrafter.assembled_output] run data remove block ~ ~ ~ Items[{Slot:16b}]

data modify storage um:storage root.temp.export_items set from block ~ ~ ~ Items
execute store result score @s um.dummy run data get block ~ ~ ~ Items
function um:block/undercrafter/crafting/export_loop
data modify block ~ ~ ~ Items set from storage um:storage root.temp.Items
