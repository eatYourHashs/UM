
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:-106b}].tag.um_id

#check offhand item
execute if score $length um.dummy matches 23 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_demonic_steel"} run function undermagic:ds_sheath
execute if score $length um.dummy matches 16 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_shadow"} run function undermagic:shadow_sheath
execute if score $length um.dummy matches 15 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_abyss"} run function undermagic:abyss_sheath

execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"shadow_shield"} run function undermagic:shadow_shield_tick
execute if score $length um.dummy matches 13 if data entity @s[scores={um.shield_block=1..}] Inventory[{Slot:-106b}].tag{um_id:"shadow_shield"} run function undermagic:shadow_counter
execute if score $length um.dummy matches 16 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"draconic_bulwark"} run function undermagic:draconic_shield_tick
execute if score $length um.dummy matches 16 if data entity @s[scores={um.shield_block=1..,um.drac_sh_chg=1..}] Inventory[{Slot:-106b}].tag{um_id:"draconic_bulwark"} run function undermagic:draconic_counter

