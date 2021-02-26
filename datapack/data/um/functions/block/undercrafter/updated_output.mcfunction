############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=um.undercrafter.assembled_output] run function um:block/undercrafter/crafting/clear_input
execute if data entity @s ArmorItems[3].tag.um.stored_output.id run function um:block/undercrafter/crafting/export_invalids
execute if data entity @s ArmorItems[3].tag.um.stored_output.id run data modify entity @s ArmorItems[3].tag.um.stored_output set value {Slot:16b}
