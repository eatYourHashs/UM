
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s SelectedItem.tag.um_id

#check held item
execute if score $length um.dummy matches 14 if data entity @s SelectedItem.tag{um_id:"bone_of_wither"} run effect clear @s minecraft:wither
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:fire_resistance 2 0 true

execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"bloody_edge_3"} run effect give @s minecraft:instant_health
execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:absorption 20 0 true

execute if score $timer_20 um_dummy matches 0 if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_1"} run effect give @s minecraft:haste 2 0 true
execute if score $timer_20 um_dummy matches 0 if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_2"} run effect give @s minecraft:haste 2 1 true
execute if score $timer_20 um_dummy matches 0 if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_3"} run effect give @s minecraft:haste 2 2 true

execute if score $timer_10 um_dummy matches 0 if score $length um.dummy matches 13 if score @s um.dragon_energy matches 60.. if data entity @s SelectedItem.tag{um_id:"dragons_wrath"} run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.4 0.3 0 10
execute if score $timer_10 um_dummy matches 0 if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"dragons_wrath"} run scoreboard players add @s um.dragon_energy 1

#coas function
execute if score @s um.cstick matches 1.. run function undermagic:player/used_coas
