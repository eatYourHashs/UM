############################################################
# Description: Untags the player if they've exited an undercrafter
# Creator: CreeperMagnet_
############################################################

clear @a[tag=um.scheduled.undercrafter_gui] clock{CustomModelData:420094}
tag @a remove um.scheduled.undercrafter_gui
