############################################################
# Description: Exports invalid items in item form
# Creator: CreeperMagnet_
############################################################

scoreboard players remove @s um.dummy 1
execute as @p[tag=um.inside_undercrafter_gui] at @s run summon item ~ ~ ~ {PickupDelay:3s,Item:{id:"stone",Count:1b},Tags:["um.replace_item","global.ignore"]}
data modify entity @e[type=item,limit=1,tag=um.replace_item] Item set from storage um:storage root.temp.export_items[0]
data remove storage um:storage root.temp.export_items[0]
tag @e[type=item,limit=1,tag=um.replace_item] remove um.replace_item
execute if entity @s[scores={um.dummy=1..}] run function undermagic:block/undercrafter/crafting/export_loop