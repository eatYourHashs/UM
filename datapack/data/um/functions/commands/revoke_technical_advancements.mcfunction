############################################################
# Description: Revokes all technical advancements that the player shouldn't have access to
# Creator: CreeperMagnet_
############################################################

title @s[tag=!global.ignore.gui,advancements={um:technical/root=true}] title {"translate":"commands.um.scold_naughty_player","color":"red"}
advancement revoke @s through um:technical/root