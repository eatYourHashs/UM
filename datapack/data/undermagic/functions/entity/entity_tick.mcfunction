
execute if score $timer_10 um.dummy matches 0 run function undermagic:entity/entity_interval

execute if entity @s[type=ender_dragon] run function undermagic:entity/ender_dragon/tick
execute if entity @s[type=arrow] run function undermagic:entity/arrow/tick
execute if entity @s[tag=um_shadow_guardian] run function undermagic:entity/generic/shadow_guardian_tick
execute if entity @s[tag=um_blood_cloud] run function undermagic:entity/generic/blood_cloud_tick
execute if entity @s[tag=um_projectile] run function undermagic:entity/projectile/tick

execute as @s[tag=um_greater_demon] run function undermagic:entity/greater_demon/tick
execute as @s[tag=um_lesser_demon] run function undermagic:entity/lesser_demon/tick

execute as @s[tag=um_demon_portal] run particle witch ~ ~1.5 ~ 0.2 0.5 0.2 0 2
execute as @s[tag=um_demon_portal] run particle flame ~ ~1.5 ~ 0.2 0.5 0.2 0 1

execute as @s[tag=um_shadow_rift] run function undermagic:entity/rift/tick

execute as @s[tag=um_shadebeast] run function undermagic:entity/generic/shadebeast_tick
execute as @s[tag=um_oblivion_charge] run function undermagic:entity/generic/oblivion_charge

execute as @s[tag=um_salamander] run function undermagic:entity/salamander/tick
execute as @s[tag=um_wyrmling] run function undermagic:entity/wyrmling/tick
execute as @s[tag=um_voidling] run function undermagic:entity/voidling/tick

execute as @s[tag=um_wyrmling_fam] run function undermagic:entity/wyrmling/wyrmling_fam_tick
execute as @s[tag=um_healing_soul] run function undermagic:entity/reaper_soul/healing_soul_tick
execute as @s[tag=um_offense_soul] run function undermagic:entity/reaper_soul/offense_soul_tick
execute as @s[tag=um_abyssal_revenant] run particle smoke ~ ~1 ~ 0.2 0.4 0.2 0 10

#crafting
execute as @s[tag=um_iron_block] run function undermagic:block/iron_block
execute as @s[tag=um_undercrafter] run function undermagic:block/undercrafter/tick
execute as @s[tag=um_bloodchalice] run function undermagic:block/bloodchalice/tick
execute as @s[tag=um_ichorbasin] run function undermagic:block/ichorbasin_tick
execute as @s[tag=um_pedestal] run function undermagic:block/pedestal_tick
