############################################################
# Description: A crafting recipe with NBT
# Creator: CreeperMagnet_
############################################################

advancement revoke @s through undermagic:recipes/nbt/root
clear @s knowledge_book
stopsound @s * minecraft:entity.item.pickup
recipe take @s undermagic:nbt/undercrafter
