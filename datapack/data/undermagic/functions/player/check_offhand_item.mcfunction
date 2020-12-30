
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:-106b}].tag.um_id

#check offhand item
execute if score $length um.dummy matches 23 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_demonic_steel"} run function undermagic:item/weapon/ds_sheath
execute if score $length um.dummy matches 16 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_shadow"} run function undermagic:item/weapon/shadow_sheath
execute if score $length um.dummy matches 15 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"longsword_abyss"} run function undermagic:item/weapon/abyss_sheath

execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"shadow_shield"} run function undermagic:item/weapon/shadow_shield_tick
execute unless score $length um.dummy matches 25 run function undermagic:items/weapon/living_nightmare_end
execute if score $length um.dummy matches 25 unless data entity @s Inventory[{Slot:-106b}].tag{um_id:"living_nightmares_buckler"} run function undermagic:items/weapon/living_nightmare_end
execute if score $length um.dummy matches 25 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"living_nightmares_buckler"} run function undermagic:item/weapon/living_nightmares_buckler_tick
execute if score $length um.dummy matches 13 if data entity @s[scores={um.shield_block=1..}] Inventory[{Slot:-106b}].tag{um_id:"shadow_shield"} run function undermagic:item/weapon/shadow_counter
execute if score $length um.dummy matches 16 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"draconic_bulwark"} run function undermagic:item/weapon/draconic_shield_tick
execute if score $length um.dummy matches 16 if data entity @s[scores={um.shield_block=1..,um.drac_sh_chg=1..}] Inventory[{Slot:-106b}].tag{um_id:"draconic_bulwark"} run function undermagic:item/weapon/draconic_counter
execute if score $length um.dummy matches 9 if data entity @s[scores={um.shield_block=1..}] Inventory[{Slot:-106b}].tag{um_id:"rev_guard"} run attribute @s minecraft:generic.attack_damage modifier add a5feef90-47e6-4eec-8f23-5ab6d96bfefb rev_guard 0.5 multiply_base
execute if score $length um.dummy matches 12 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"venom_quiver"} if score @s um.mana_cd matches 20.. unless score @s um.quiver_cd matches 0 run scoreboard players remove @s um.quiver_cd 1
execute if score $length um.dummy matches 11 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"acid_quiver"} if score @s um.mana_cd matches 20.. unless score @s um.quiver_cd matches 0 run scoreboard players remove @s um.quiver_cd 1
execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"shadow_quiver"} if score @s um.mana_cd matches 20.. unless score @s um.quiver_cd matches 0 run scoreboard players remove @s um.quiver_cd 1
execute if score $length um.dummy matches 13 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"impact_quiver"} if score @s um.mana_cd matches 20.. unless score @s um.quiver_cd matches 0 run scoreboard players remove @s um.quiver_cd 1
execute if score $length um.dummy matches 14 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"mysterious_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 10 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"astral_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..15 unless score @s um.mana matches 100 run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 12 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"eldritch_orb"} if score @s um.mana_cd matches 20.. unless score @s um.mana matches 100 run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 14 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"mysterious_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 10 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"astral_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..15 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 12 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"eldritch_orb"} if score @s um.mana_cd matches 20.. unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 14 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"mysterious_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/magi,tag=um.magi_break] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 10 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"astral_orb"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..15 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/magi,tag=um.magi_break] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 12 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"eldritch_orb"} if score @s um.mana_cd matches 20.. unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/magi,tag=um.magi_break] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 15 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 15 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/abyss_warlock] run scoreboard players add @s um.mana 1
execute if score $length um.dummy matches 15 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} if score @s um.mana_cd matches 20.. if score $timer_20 um.dummy matches 1..10 unless score @s um.mana matches 100 if entity @s[predicate=undermagic:armor_sets/magi,tag=um.magi_break] run scoreboard players add @s um.mana 1

#coas
execute if score @s um.cstick matches 1.. unless data entity @s SelectedItem.tag.um_id run function undermagic:player/used_coas
