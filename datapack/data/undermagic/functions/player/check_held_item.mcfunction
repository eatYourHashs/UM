
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s SelectedItem.tag.um_id

#check held item
execute if score $length um.dummy matches 14 if data entity @s SelectedItem.tag{um_id:"bone_of_wither"} run effect clear @s minecraft:wither
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:fire_resistance 2 0 true

execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"bloody_edge_3"} run effect give @s minecraft:regeneration 3 1 true
execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"bloody_edge_4"} run effect give @s minecraft:regeneration 3 2 true
execute if score $length um.dummy matches 13 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"inferno_staff"} run effect give @s minecraft:absorption 20 0 true

execute if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_1"} run effect give @s minecraft:haste 2 0 true
execute if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_2"} run effect give @s minecraft:haste 2 1 true
execute if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_3"} run effect give @s minecraft:haste 2 2 true
execute if score $length um.dummy matches 9 if data entity @s SelectedItem.tag{um_id:"carnage_4"} run effect give @s minecraft:haste 2 3 true

execute if score $length um.dummy matches 13 if score @s um.dragon_energy matches 240.. if data entity @s SelectedItem.tag{um_id:"dragons_wrath"} run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.4 0.3 0 10
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"dragons_wrath"} run scoreboard players add @s um.dragon_energy 1

execute if score $length um.dummy matches 11 if data entity @s SelectedItem.tag{um_id:"the_blaster",Charged:0b} run item entity @s weapon.mainhand replace minecraft:crossbow{display:{Name:'{"text":"The Blaster","color":"light_purple","italic":false}',Lore:['{"text":"An ultra-fast crossbow modified from","color":"gray","italic":false}','{"text":"an Illager design.","color":"gray","italic":false}']},HideFlags:1,RepairCost:50,Unbreakable:1b,CustomModelData:420001,um_id:the_blaster,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute if score $length um.dummy matches 14 if score @s um.deal_damage matches 1.. if data entity @s SelectedItem.tag{um_id:"paladin_hammer"} run function undermagic:item/weapon/paladin_hammer_hit
execute if score $length um.dummy matches 14 if score @s um.paladin_chg matches 4 if data entity @s SelectedItem.tag{um_id:"paladin_hammer"} run attribute @s minecraft:generic.attack_damage modifier add 2eb6df10-0ea6-46ba-a91a-b026ef10315c paladin_hammer 1 multiply_base
execute unless score $length um.dummy matches 14 run attribute @s minecraft:generic.attack_damage modifier remove 2eb6df10-0ea6-46ba-a91a-b026ef10315c
execute if score $length um.dummy matches 14 unless score @s um.paladin_chg matches 4 run attribute @s minecraft:generic.attack_damage modifier remove 2eb6df10-0ea6-46ba-a91a-b026ef10315c
execute if score $length um.dummy matches 14 if score @s um.paladin_chg matches 4 unless data entity @s SelectedItem.tag{um_id:"paladin_hammer"} run attribute @s minecraft:generic.attack_damage modifier remove 2eb6df10-0ea6-46ba-a91a-b026ef10315c
execute if score $length um.dummy matches 9 if score @s um.health matches ..10 if data entity @s SelectedItem.tag{um_id:"rev_blade"} run attribute @s minecraft:generic.attack_damage modifier add 26e91bd0-88e2-47bd-861d-d379765295c5 rev_blade 0.5 multiply_base
execute unless score $length um.dummy matches 9 run attribute @s minecraft:generic.attack_damage modifier remove 26e91bd0-88e2-47bd-861d-d379765295c5
execute if score $length um.dummy matches 9 unless score @s um.health matches ..10 run attribute @s minecraft:generic.attack_damage modifier remove 26e91bd0-88e2-47bd-861d-d379765295c5
execute if score $length um.dummy matches 9 if score @s um.health matches ..10 unless data entity @s SelectedItem.tag{um_id:"rev_blade"} run attribute @s minecraft:generic.attack_damage modifier remove 26e91bd0-88e2-47bd-861d-d379765295c5

execute if score $length um.dummy matches 12 if score @s um.sprint matches 1.. run attribute @s minecraft:generic.attack_damage modifier add ab770ca2-a0cc-415c-9518-aa9c68274268 flare_runner 0.5 multiply_base
execute if score $length um.dummy matches 12 unless score @s um.sprint matches 1.. run attribute @s minecraft:generic.attack_damage modifier remove ab770ca2-a0cc-415c-9518-aa9c68274268
execute unless score $length um.dummy matches 12 run attribute @s minecraft:generic.attack_damage modifier remove ab770ca2-a0cc-415c-9518-aa9c68274268


#coas function
execute if score @s um.cstick matches 1.. run function undermagic:player/used_coas
