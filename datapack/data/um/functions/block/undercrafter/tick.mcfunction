############################################################
# Description: Commands to tick an undercrafter
# Creator: CreeperMagnet_
############################################################

particle flame ~ ~ ~ 1 1 1 0 1 force
execute if entity @s[predicate=um:undercrafter/invalid_items] run playsound minecraft:block.bamboo.place master @a ~ ~ ~