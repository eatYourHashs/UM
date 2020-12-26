
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:102b}].tag.um_id

#check armor item
execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_ranger] run function undermagic:item/armor/abyss_ranger_tick
execute if score $length um.dummy matches 17 if entity @s[predicate=undermagic:armor_sets/dragon] run function undermagic:item/armor/dragon_armor_tick
execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run function undermagic:item/armor/abyss_warlock_tick
execute if score $length um.dummy matches 23 if entity @s[predicate=undermagic:armor_sets/abyss_knight] run function undermagic:item/armor/abyss_knight_tick
execute unless score $length um.dummy matches 23 if score @s um.ak_count matches 200.. run function undermagic:item/armor/abyss_knight_reset
execute if score $length um.dummy matches 23 unless entity @s[predicate=undermagic:armor_sets/abyss_knight] if score @s um.ak_count matches 200.. run function undermagic:item/armor/abyss_knight_reset

execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run effect give @s fire_resistance 4 0 true
execute if score $length um.dummy matches 19 if score @s um.dark_energy matches 2000.. if data entity @s Inventory[{Slot:102b}].tag{um_id:"pit_lord_chestplate"} if block ~ ~ ~ #undermagic:burning run scoreboard players set @s um.since_damaged 0

execute if score $length um.dummy matches 17 if entity @s[predicate=undermagic:armor_sets/primal] run function undermagic:item/armor/primal_tick

execute if score $length um.dummy matches 18 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/avenger] run effect give @a[distance=..6] strength 5 0
execute if score $length um.dummy matches 18 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/protector] run effect give @a[distance=..6] resistance 5 0
execute if score $length um.dummy matches 18 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/crusader] run effect give @a[distance=..6] speed 5 0
execute if score $length um.dummy matches 25 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/fallen_avenger] run effect give @a[distance=..6] strength 5 0
execute if score $length um.dummy matches 25 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/fallen_protector] run effect give @a[distance=..6] resistance 5 0
execute if score $length um.dummy matches 25 if score @s um.deal_damage matches 1.. if entity @s[predicate=undermagic:armor_sets/fallen_crusader] run effect give @a[distance=..6] speed 5 0

