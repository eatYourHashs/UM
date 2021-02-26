############################################################
# Description: Commands to run tickly off every player
# Creator: CreeperMagnet_
############################################################

## Undercrafter
execute if entity @s[tag=um.inside_undercrafter_gui] as @e[type=armor_stand,tag=um.undercrafter,distance=..12,sort=arbitrary] at @s if block ~ ~ ~ barrel[open=true] run function um:block/undercrafter/tick
