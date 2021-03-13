############################################################
# Description: Tags the player if they've entered a jewelry table
# Creator: CreeperMagnet_
############################################################

give @s[predicate=!undermagic:full_inventory] clock{CustomModelData:420094,display:{Name:'""'}}
tag @s add um.scheduled.undercrafter_gui
schedule function undermagic:block/undercrafter/interact/clear 2t
stopsound @a[distance=..16] player minecraft:entity.item.pickup
tag @s add um.inside_undercrafter_gui
advancement revoke @s only undermagic:technical/block/undercrafter_enter_gui
