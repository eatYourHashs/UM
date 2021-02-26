############################################################
# Description: Commands to break an undercrafter
# Creator: CreeperMagnet_
############################################################

execute store success score um.temp_0 um.dummy run kill @e[tag=!global.ignore,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"color":"white","font":"um:undercrafter","translate":"block.um.undercrafter.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.um.undercrafter"}]}'}}}}]
execute if score um.temp_0 um.dummy matches 1.. run loot spawn ~ ~ ~ loot um:items/undercrafter
particle minecraft:item barrel{CustomModelData:420000} ~ ~ ~ 0.5 0.6 0.5 0.05 100 normal
kill @s
