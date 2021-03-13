############################################################
# Description: Counts every single item in the player's inventory and sets a temp player to the value
# Creator: CreeperMagnet_
############################################################

scoreboard players remove @s um.dummy 1
execute store result score um.temp_0 um.dummy run data get storage um:storage root.temp.Inventory[0].Count
scoreboard players operation um.temp_1 um.dummy += um.temp_0 um.dummy
data remove storage um:storage root.temp.Inventory[0]
execute if entity @s[scores={um.dummy=1..}] run function undermagic:block/undercrafter/crafting/cursor_check/loop