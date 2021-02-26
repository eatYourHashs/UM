############################################################
# Description: Functions to run off of every tcc block every single tick
# Creator: CreeperMagnet_
############################################################

## Undercrafter
execute if entity @s[type=armor_stand,tag=um.undercrafter] unless block ~ ~ ~ barrel run function um:block/undercrafter/break
