
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:-106b}].tag.um_id

#check offhand item
execute if score $length um.dummy matches 11 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_ultra"} if score @s um.mana_used matches 300.. positioned ~ ~1.8 ~ positioned ^ ^ ^3 run function undermagic:item/weapon/augis_ultra
execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} if score @s um.mana_used matches 300.. positioned ~ ~1.8 ~ positioned ^ ^ ^3 run function undermagic:item/weapon/augis_oblivia
execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"flarium_aegis"} run effect give @s fire_resistance 1 0 true
execute if score $length um.dummy matches 19 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"infernal_soul_aegis"} run effect give @s fire_resistance 1 0 true