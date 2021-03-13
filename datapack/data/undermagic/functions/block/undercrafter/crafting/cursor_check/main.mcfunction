############################################################
# Description: Counts up all the items in a player's inventory
# Creator: CreeperMagnet_
############################################################

tag @s remove um.shift_clicked
scoreboard players reset um.temp_0
scoreboard players reset um.temp_1
data remove storage root.temp
data modify storage um:storage root.temp.Inventory set from entity @s Inventory
execute store result score @s um.dummy run data get entity @s Inventory
function undermagic:block/undercrafter/crafting/cursor_check/loop
execute store result score @s um.dummy run clear @s #um:all 0
execute if score um.temp_1 um.dummy = @s um.dummy run tag @s add um.shift_clicked