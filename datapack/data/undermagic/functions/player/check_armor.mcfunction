
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:102b}].tag.um_id

#check armor item
execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_ranger] run function undermagic:item/armor/abyss_ranger_tick
execute if score $length um.dummy matches 17 if entity @s[predicate=undermagic:armor_sets/dragon] run function undermagic:item/armor/dragon_armor_tick
execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run function undermagic:item/armor/abyss_warlock_tick

execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run effect give @s fire_resistance 4 0 true
execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run scoreboard players set @s um.since_damaged 0

