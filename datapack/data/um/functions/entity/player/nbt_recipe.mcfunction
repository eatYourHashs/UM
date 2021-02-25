############################################################
# Description: A crafting recipe with NBT
# Creator: CreeperMagnet_
############################################################

advancement revoke @s through um:recipes/nbt/root
clear @s knowledge_book
stopsound @s * minecraft:entity.item.pickup
recipe take @s um:nbt/undercrafter
