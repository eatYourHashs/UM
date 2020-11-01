scoreboard players set temp um.dummy 0
execute if data entity @s Inventory[{Slot:100b}].tag{um_id:"boots_demonic_steel"} run scoreboard players add temp um.dummy 2500
execute if data entity @s Inventory[{Slot:101b}].tag{um_id:"leggings_demonic_steel"} run scoreboard players add temp um.dummy 2500
execute if data entity @s Inventory[{Slot:102b}].tag{um_id:"chestplate_demonic_steel"} run scoreboard players add temp um.dummy 2500
execute if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} run scoreboard players add temp um.dummy 7500
execute if data entity @s Inventory[{Slot:103b}].tag{um_id:"helmet_demonic_steel"} run scoreboard players add temp um.dummy 2500
execute if data entity @s Inventory[{Slot:100b}].tag{um_id:"boots_demonic_steel"} if score @s um.dark_energy <= temp um.dummy run scoreboard players add @s um.dark_energy 50
execute if data entity @s Inventory[{Slot:101b}].tag{um_id:"leggings_demonic_steel"} if score @s um.dark_energy <= temp um.dummy run scoreboard players add @s um.dark_energy 50
execute if data entity @s Inventory[{Slot:102b}].tag{um_id:"chestplate_demonic_steel"} if score @s um.dark_energy <= temp um.dummy run scoreboard players add @s um.dark_energy 50
execute if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if score @s um.dark_energy <= temp um.dummy run scoreboard players add @s um.dark_energy 150
execute if data entity @s Inventory[{Slot:103b}].tag{um_id:"helmet_demonic_steel"} if score @s um.dark_energy <= temp um.dummy run scoreboard players add @s um.dark_energy 50
