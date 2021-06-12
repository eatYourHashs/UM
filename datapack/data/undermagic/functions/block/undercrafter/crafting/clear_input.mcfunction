############################################################
# Description: Clears the input for the crafting
# Creator: CreeperMagnet_
############################################################

playsound um:block.undercrafter.craft block @a[distance=..16]
tag @s remove um.undercrafter.assembled_output
execute as @a[distance=..12,sort=nearest,tag=um.inside_undercrafter_gui] run function undermagic:block/undercrafter/crafting/cursor_check/main
execute store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:2b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:3b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:3b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:4b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:4b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:11b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:11b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:13b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:20b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:20b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:21b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:21b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:22b}].Count int 1 run data get block ~ ~ ~ Items[{Slot:22b}].Count 0.9999999999
execute unless entity @a[distance=..12,sort=nearest,tag=um.inside_undercrafter_gui,tag=!um.shift_clicked] run function undermagic:block/undercrafter/crafting/shift_click/main
