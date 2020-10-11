
#get ID length so not every ID has to be checked
execute store result score $length um.dummy run data get entity @s Inventory[{Slot:102b}].tag.um_id

#check armor
execute if score $length um.dummy matches 23 if score @s um.blood matches ..195 if entity @s[predicate=undermagic:armor_sets/bloodstained] if entity @e[tag=um_bloodchalice,scores={um.dummy=5..},sort=nearest,distance=..8] unless entity @e[distance=..64,type=wither] unless entity @e[distance=..64,tag=um_elemental] unless entity @e[distance=..64,tag=um_pit_lord_boss] unless entity @e[distance=..64,tag=um_blood_boss] unless entity @e[distance=..64,type=ender_dragon] run function undermagic:item/armor/bs_armor_draw_blood
execute if score $length um.dummy matches 23 if score @s um.blood matches ..010 if entity @s[predicate=undermagic:armor_sets/bloodstained] run effect give @s wither 4 4
execute if score $length um.dummy matches 23 if score @s um.blood matches ..010 if entity @s[predicate=undermagic:armor_sets/bloodstained] run effect give @s hunger 4 4

execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_ranger,scores={um.ar_stealth=100..}] run effect give @s speed 2 0 true
execute if score $length um.dummy matches 18 if entity @s[predicate=undermagic:armor_sets/abyss_ranger,scores={um.ar_stealth=100..}] run effect give @s invisibility 2 0 true

execute if score $length um.dummy matches 16 if entity @s[predicate=undermagic:armor_sets/shade] run effect give @s invisibility 1 0 true
execute if score $length um.dummy matches 16 if score @s um.shade_invi matches ..0 if entity @s[predicate=undermagic:armor_sets/shade] run effect give @s resistance 1 4 true
execute if score $length um.dummy matches 16 if score @s um.shade_invi matches ..0 if entity @s[predicate=undermagic:armor_sets/shade] run effect give @s strength 1 1 true

execute if score $length um.dummy matches 16 if entity @s[predicate=undermagic:armor_sets/omega] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.03 2
