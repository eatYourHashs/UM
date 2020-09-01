
#check armor item
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_ranger_hood"} },{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_ranger_tunic"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_ranger_pants"} },{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_ranger_boots"} }]}] run function undermagic:abyss_ranger_tick
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"dragon_helmet"}     },{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"dragon_chestplate"} },{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"dragon_leggings"}    },{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"dragon_boots"}       }]}] run function undermagic:dragon_armor_tick
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_warlock_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_warlock_robe"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_warlock_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_warlock_boots"}}]}] run function undermagic:abyss_warlock_tick

execute if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run effect give @s fire_resistance 4 0 true
execute if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run scoreboard players set @s um.since_damaged 0

