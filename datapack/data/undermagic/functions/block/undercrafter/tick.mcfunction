############################################################
# Description: Commands to tick an undercrafter
# Creator: CreeperMagnet_
############################################################

particle flame ~ ~ ~ 1 1 1 0 1 force
execute if entity @s[predicate=undermagic:undercrafter/invalid_items] run function undermagic:block/undercrafter/crafting/move_invalids
execute store success score @s um.dummy run data modify entity @s ArmorItems[3].tag.um.stored_output set from block ~ ~ ~ Items[{Slot:16b}]
execute store success score @s um.dummy unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} if data entity @s ArmorItems[3].tag.um.stored_output.id run data modify entity @s ArmorItems[3].tag.um.stored_output set value {Slot:16b}
execute if entity @s[scores={um.dummy=1..}] run function undermagic:block/undercrafter/updated_output
execute store success score @s um.dummy run data modify entity @s ArmorItems[3].tag.um.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={um.dummy=1..}] if data block ~ ~ ~ Items run function undermagic:block/undercrafter/updated_input
