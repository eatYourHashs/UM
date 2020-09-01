
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s SelectedItem.tag.um_id

#check held item
execute if score $length um.dummy matches 14 if data entity @s SelectedItem.tag{um_id:"bone_of_wither"} run effect clear @s minecraft:wither
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:fire_resistance 2 0 true

execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"bloody_edge_3"} run effect give @s minecraft:instant_health
execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:absorption 20 0 true

#coas function
execute if score @s um.cstick matches 1.. run function undermagic:player/used_coas
