############################################################
# Description: Untags the player if they've exited an undercrafter
# Creator: CreeperMagnet_
############################################################

tag @s remove um.inside_undercrafter_gui
advancement revoke @s only undermagic:technical/block/undercrafter_exit_gui
