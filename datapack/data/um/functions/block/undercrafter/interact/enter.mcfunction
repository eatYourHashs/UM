############################################################
# Description: Tags the player if they've entered a jewelry table
# Creator: CreeperMagnet_
############################################################

give @s[predicate=!um:full_inventory] structure_block{CustomModelData:420007,display:{Name:'""'}}
tag @s add um.scheduled.undercrafter_gui
schedule function um:block/undercrafter/interact/clear 2t
stopsound @a[distance=..16] player minecraft:entity.item.pickup
tag @s add um.inside_undercrafter_gui
advancement revoke @s only um:technical/block/undercrafter_enter_gui
