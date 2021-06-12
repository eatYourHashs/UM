############################################################
# Description: Commands to kill the output of the undercrafter
# Creator: CreeperMagnet_
############################################################

execute as @e[tag=um.undercrafter.dead,limit=1,sort=nearest,type=armor_stand] run data modify entity @s ArmorItems[3].tag.um.temp set from entity @s ArmorItems[3].tag.um.stored_output
execute store success score @s um.dummy run data modify entity @e[tag=um.undercrafter.dead,limit=1,sort=nearest,type=armor_stand] ArmorItems[3].tag.um.temp.tag set from entity @s Item.tag
execute if entity @s[scores={um.dummy=0}] run kill @s
