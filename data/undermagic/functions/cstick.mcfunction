execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"longsword_demonic_steel_sheathed"}}}] at @s run function undermagic:ds_quickdraw
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"longsword_shadow_sheathed"}}}] at @s run function undermagic:shadow_quickdraw
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"longsword_abyss_sheathed"}}}] at @s run function undermagic:abyss_quickdraw
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"fire_orb"}}}] at @s if score @s um.sneak matches ..0 if score @s um.orb_cooldown matches ..0 run function undermagic:fo_fireball
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"bone_of_wither"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:wither_skull
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"inferno_staff"}}}] at @s if score @s um.sneak matches ..0 if score @s um.orb_cooldown matches ..0 run function undermagic:is_fireball
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"fire_orb"}}}] at @s if score @s um.sneak matches 1.. run function undermagic:fo_flamethrower
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"inferno_staff"}}}] at @s if score @s um.sneak matches 1.. run function undermagic:is_flamethrower
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"sanguis_inspector"}}}] at @s run tellraw @s [{"score":{"name":"@e[distance=..5,limit=1,tag=um_bloodchalice,sort=nearest]","objective":"um.dummy"},"color":"red","bold":true},{"text":" blood in chalice.","color":"red","bold":false}]
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"charm_swapping_sigil"}}}] at @s run function undermagic:swap_charms
execute as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"bloodstained_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"bloodstained_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"bloodstained_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"bloodstained_boots"}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"sanguis_inspector"}}}] at @s run tellraw @s [{"score":{"name":"@s","objective":"um.blood"},"color":"red","bold":true},{"text":" blood in armor.","color":"red","bold":false}]
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"phantasmal_dagger"}}}] at @s run function undermagic:throw_dagger
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"locator_card"}}}] at @s if entity @e[tag=um_teleporter,distance=..5] run function undermagic:bind_card
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"recall_locator_card"}}}] at @s run function undermagic:recall_card
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"elder_staff"}}}] at @s if score @s um.sneak matches ..0 if score @s um.orb_cooldown matches ..0 run function undermagic:dark_orb
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"elder_staff"}}}] at @s if score @s um.sneak matches 1.. if score @s um.orb_cooldown matches ..0 run function undermagic:large_dark_orb
execute as @s[nbt={Dimension:"minecraft:the_nether",SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"abyssal_mirror"}}}] at @s run function undermagic:abyss_warp
execute as @s[tag=!um_abyss_warped,nbt={Dimension:"undermagic:abyss",SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"abyssal_mirror"}}}] at @s run function undermagic:nether_abyss_warp
tag @s remove um_abyss_warped
execute as @s[nbt={Dimension:"undermagic:abyss",SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"crown_of_ruin"}}}] at @s run function undermagic:shadesull_summon
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"oblivion_staff"}}}] at @s if score @s um.orb_cooldown matches ..0 run scoreboard players set temp um.dummy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"oblivion_staff"}}}] at @s if score @s um.orb_cooldown matches ..0 positioned ^ ^ ^3 run function undermagic:oblivion_staff
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"iron_rod"}}}] at @s if score @s um.orb_cooldown matches ..0 run scoreboard players set temp um.dummy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"iron_rod"}}}] at @s if score @s um.orb_cooldown matches ..0 positioned ^ ^ ^3 run function undermagic:iron_rod
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"diamond_piercer"}}}] at @s if score @s um.orb_cooldown matches ..0 run scoreboard players set temp um.dummy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"diamond_piercer"}}}] at @s if score @s um.orb_cooldown matches ..0 positioned ^ ^ ^3 run function undermagic:diamond_piercer
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"prismatic_scepter"}}}] at @s if score @s um.orb_cooldown matches ..0 run scoreboard players set temp um.dummy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"prismatic_scepter"}}}] at @s if score @s um.orb_cooldown matches ..0 positioned ^ ^ ^3 run function undermagic:prismatic_scepter
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"dragon_staff"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:dragon_staff
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"demon_flame_scepter"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:demon_flame_scepter
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"blood_rain_staff_1"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:blood_rain_staff_1
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"blood_rain_staff_2"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:blood_rain_staff_2
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"blood_rain_staff_3"}}}] at @s if score @s um.orb_cooldown matches ..0 run function undermagic:blood_rain_staff_3
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"mythical_dragon_egg"}}}] at @s unless score @s um.wyrmling_lvl matches 1.. run function undermagic:entity/wyrmling/get
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"mythical_dragon_egg_dismissed"}}}] at @s if score @s um.wyrmling_lvl matches 1.. run function undermagic:entity/wyrmling/summon
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"mythical_dragon_egg_summoned"}}}] at @s unless score @s um.cstick matches 0 run function undermagic:entity/wyrmling/dismiss
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"doom_desire"}}}] at @s if score @s um.orb_cooldown matches ..0 run scoreboard players set temp um.dummy 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"doom_desire"}}}] at @s if score @s um.orb_cooldown matches ..0 positioned ^ ^ ^2.1 run function undermagic:doom_desire
