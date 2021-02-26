############################################################
# Description: Untags the player if they've exited an undercrafter
# Creator: CreeperMagnet_
############################################################

clear @a[tag=um.scheduled.undercrafter_gui] structure_block{CustomModelData:420007}
tag @a remove um.scheduled.undercrafter_gui