
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:102b}].tag.um_id

#check armor item
execute if score $length um.dummy matches 18 if entity @s[nbt={Inventory:[{Slot:103b,tag:{um_id:"abyss_ranger_hood"} },{Slot:102b,tag:{um_id:"abyss_ranger_tunic"}},{Slot:101b,tag:{um_id:"abyss_ranger_pants"} },{Slot:100b,tag:{um_id:"abyss_ranger_boots"} }]}] run function undermagic:abyss_ranger_tick
execute if score $length um.dummy matches 17 if entity @s[nbt={Inventory:[{Slot:103b,tag:{um_id:"dragon_helmet"}     },{Slot:102b,tag:{um_id:"dragon_chestplate"} },{Slot:101b,tag:{um_id:"dragon_leggings"}    },{Slot:100b,tag:{um_id:"dragon_boots"}       }]}] run function undermagic:dragon_armor_tick
execute if score $length um.dummy matches 18 if entity @s[nbt={Inventory:[{Slot:103b,tag:{um_id:"abyss_warlock_hood"}},{Slot:102b,tag:{um_id:"abyss_warlock_robe"}},{Slot:101b,tag:{um_id:"abyss_warlock_pants"}},{Slot:100b,tag:{um_id:"abyss_warlock_boots"}}]}] run function undermagic:abyss_warlock_tick

execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run effect give @s fire_resistance 4 0 true
execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run scoreboard players set @s um.since_damaged 0

