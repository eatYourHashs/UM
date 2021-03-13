############################################################
# Description: Commands for placing an undercrafter
# Creator: CreeperMagnet_
############################################################

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.um.undercrafter.gui","font":"um:undercrafter","color":"white","with":[{"translate":"block.um.undercrafter","color":"#3F3F3F","font":"minecraft:default"}]}'}
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.um.undercrafter"}',Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:420000}}],Tags:["um.block","um.undercrafter","um.entity","um.fire","global.ignore"],NoGravity:1b,Invisible:1b,Marker:1b}