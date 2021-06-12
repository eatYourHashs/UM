############################################################
# Description: Runs commands for shift-clicking the output
# Creator: CreeperMagnet_
############################################################


# Find the total number of output items needed
scoreboard players set um.temp_2 um.dummy 1000
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy
execute store result score @s um.dummy run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute if score @s um.dummy matches 1.. if score @s um.dummy < um.temp_2 um.dummy run scoreboard players operation um.temp_2 um.dummy = @s um.dummy

scoreboard players remove um.temp_2 um.dummy 1
execute if score um.temp_2 um.dummy matches 1..64 run function undermagic:block/undercrafter/crafting/shift_click/calculate_extras
