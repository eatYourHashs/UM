############################################################
# Description: Commands to run tickly
# Creator: CreeperMagnet_
############################################################

## Entity Ticking
execute as @e[sort=arbitrary,tag=um.entity] at @s run function um:entity/tick

## Player Ticking
execute as @a[sort=arbitrary,gamemode=!spectator] at @s run function um:entity/player/tick
