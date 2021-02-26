############################################################
# Description: Clears the input for the crafting
# Creator: CreeperMagnet_
############################################################

playsound um:block.undercrafter.craft block @a[distance=..16]
tag @s remove um.undercrafter.assembled_output
execute store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:2b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:3b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:3b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:4b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:4b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:11b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:11b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:13b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:20b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:20b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:21b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:21b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:22b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:22b}].Count 0.9999999999
