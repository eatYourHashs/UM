############################################################
# Description: Spawns the extra items needed from creating an extra
# Creator: CreeperMagnet_
############################################################

summon item ~ ~ ~ {Tags:["um.extra_item"],PickupDelay:3s,Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=um.extra_item,type=item,limit=1,sort=nearest] Item set from storage um:storage root.temp.item
tag @e[tag=um.extra_item,type=item,limit=1,sort=nearest] remove um.extra_item
scoreboard players remove um.temp_2 um.dummy 1
execute if score um.temp_2 um.dummy matches 1.. run function undermagic:block/undercrafter/crafting/shift_click/spawn_extra_items
