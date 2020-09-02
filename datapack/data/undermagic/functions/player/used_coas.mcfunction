
#get ID length so not every ID has to be checked
execute store result score temp_0 um.dummy run data get entity @s SelectedItem.tag.um_id

#use items
execute if score $length um.dummy matches 32 if data entity @s SelectedItem.tag{um_id:"longsword_demonic_steel_sheathed"} run function undermagic:item/weapon/ds_quickdraw
execute if score $length um.dummy matches 25 if data entity @s SelectedItem.tag{um_id:"longsword_shadow_sheathed"} run function undermagic:item/weapon/shadow_quickdraw
execute if score $length um.dummy matches 24 if data entity @s SelectedItem.tag{um_id:"longsword_abyss_sheathed"} run function undermagic:item/weapon/abyss_quickdraw
execute if score $length um.dummy matches 20 if data entity @s SelectedItem.tag{um_id:"charm_swapping_sigil"} run function undermagic:item/tool/swap_charms
execute if score $length um.dummy matches 17 if data entity @s SelectedItem.tag{um_id:"phantasmal_dagger"} run function undermagic:item/weapon/throw_dagger
execute if score $length um.dummy matches 19 if data entity @s SelectedItem.tag{um_id:"recall_locator_card"} run function undermagic:item/tool/recall_card
execute if score $length um.dummy matches 12 if data entity @s SelectedItem.tag{um_id:"locator_card"} if entity @e[tag=um_teleporter,distance=..5] run function undermagic:item/tool/bind_card
execute if score $length um.dummy matches 17 if data entity @s SelectedItem.tag{um_id:"sanguis_inspector"} run tellraw @s [{"score":{"name":"@e[distance=..5,limit=1,tag=um_bloodchalice,sort=nearest]","objective":"um.dummy"},"color":"red","bold":true},{"text":" blood in chalice.","color":"red","bold":false}]
execute if score $length um.dummy matches 17 if data entity @s SelectedItem.tag{um_id:"sanguis_inspector"} as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"bloodstained_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"bloodstained_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"bloodstained_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"bloodstained_boots"}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"sanguis_inspector"}}}] at @s run tellraw @s [{"score":{"name":"@s","objective":"um.blood"},"color":"red","bold":true},{"text":" blood in armor.","color":"red","bold":false}]

execute if score $length um.dummy matches 19 if data entity @s SelectedItem.tag{um_id:"mythical_dragon_egg"} unless score @s um.wyrmling_lvl matches 1.. run function undermagic:entity/wyrmling/get
execute if score $length um.dummy matches 29 if data entity @s SelectedItem.tag{um_id:"mythical_dragon_egg_dismissed"} if score @s um.wyrmling_lvl matches 1.. run function undermagic:entity/wyrmling/summon
execute if score $length um.dummy matches 28 if data entity @s SelectedItem.tag{um_id:"mythical_dragon_egg_summoned"} unless score @s um.cstick matches 0 run function undermagic:entity/wyrmling/dismiss

#abyss warp/summon
execute if score $length um.dummy matches 14 if data entity @s SelectedItem.tag{um_id:"abyssal_mirror"} if predicate undermagic:in_the_nether run function undermagic:world/abyss/abyss_warp
execute if score $length um.dummy matches 14 if data entity @s SelectedItem.tag{um_id:"abyssal_mirror"} if predicate undermagic:in_abyss run function undermagic:world/abyss/nether_abyss_warp
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"crown_of_ruin"} if predicate undermagic:in_abyss run function undermagic:entity/shadesull/summon
tag @s remove um_abyss_warped

#staves
scoreboard players set temp um.dummy 0
execute if score $length um.dummy matches 14 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"oblivion_staff"} positioned ^ ^ ^3 run function undermagic:item/weapon/oblivion_staff
execute if score $length um.dummy matches 08 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"iron_rod"} positioned ^ ^ ^3 run function undermagic:item/weapon/iron_rod
execute if score $length um.dummy matches 15 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"diamond_piercer"} positioned ^ ^ ^3 run function undermagic:item/weapon/diamond_piercer
execute if score $length um.dummy matches 17 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"prismatic_scepter"} positioned ^ ^ ^3 run function undermagic:item/weapon/prismatic_scepter
execute if score $length um.dummy matches 11 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"doom_desire"} run function undermagic:item/weapon/doom_desire
execute if score $length um.dummy matches 11 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"elder_staff"} if score @s um.sneak matches ..0 run function undermagic:item/weapon/dark_orb
execute if score $length um.dummy matches 11 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"elder_staff"} if score @s um.sneak matches 1.. run function undermagic:item/weapon/large_dark_orb
execute if score $length um.dummy matches 14 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"bone_of_wither"} run function undermagic:item/weapon/wither_skull
execute if score $length um.dummy matches 13 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"inferno_staff"} if score @s um.sneak matches ..0 run function undermagic:item/weapon/is_fireball
execute if score $length um.dummy matches 13 if data entity @s SelectedItem.tag{um_id:"inferno_staff"} if score @s um.sneak matches 1.. run function undermagic:item/weapon/is_flamethrower
execute if score $length um.dummy matches 08 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"fire_orb"} at @s if score @s um.sneak matches ..0 run function undermagic:item/weapon/fo_fireball
execute if score $length um.dummy matches 08 if data entity @s SelectedItem.tag{um_id:"fire_orb"} if score @s um.sneak matches 1.. run function undermagic:item/weapon/fo_flamethrower

execute if score $length um.dummy matches 12 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"dragon_staff"} run function undermagic:item/weapon/dragon_staff
execute if score $length um.dummy matches 19 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"demon_flame_scepter"} run function undermagic:item/weapon/demon_flame_scepter
execute if score $length um.dummy matches 18 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"blood_rain_staff_1"} run function undermagic:item/weapon/blood_rain_staff_1
execute if score $length um.dummy matches 18 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"blood_rain_staff_2"} run function undermagic:item/weapon/blood_rain_staff_2
execute if score $length um.dummy matches 18 if score @s um.orb_cooldown matches ..0 if data entity @s SelectedItem.tag{um_id:"blood_rain_staff_3"} run function undermagic:item/weapon/blood_rain_staff_3