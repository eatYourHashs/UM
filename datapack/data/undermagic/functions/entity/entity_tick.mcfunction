
execute if score $timer_10 um.dummy matches 0 run function undermagic:entity/entity_interval

execute if entity @s[type=ender_dragon] run function undermagic:entity/ender_dragon/tick
execute if entity @s[type=arrow] run function undermagic:entity/arrow/tick
execute if entity @s[tag=um.shadow_guardian] run function undermagic:entity/generic/shadow_guardian_tick
execute if entity @s[tag=um.blood_cloud] run function undermagic:entity/blood_cloud/blood_cloud_tick
execute if entity @s[tag=um.projectile] run function undermagic:entity/projectile/tick

execute as @s[tag=um.greater_demon] run function undermagic:entity/greater_demon/tick
execute as @s[tag=um.lesser_demon] run function undermagic:entity/lesser_demon/tick

execute as @s[tag=um.demon_portal] run particle witch ~ ~1.5 ~ 0.2 0.5 0.2 0 2
execute as @s[tag=um.demon_portal] run particle flame ~ ~1.5 ~ 0.2 0.5 0.2 0 1

execute as @s[tag=um.shadow_rift] run function undermagic:entity/rift/tick

execute as @s[tag=um.shadebeast] run function undermagic:entity/generic/shadebeast_tick
execute as @s[tag=um.oblivion_charge] run function undermagic:entity/generic/oblivion_charge

execute as @s[tag=um.salamander] run function undermagic:entity/salamander/tick
execute as @s[tag=um.wyrmling] run function undermagic:entity/wyrmling/tick
execute as @s[tag=um.voidling] run function undermagic:entity/voidling/tick

execute as @s[tag=um.wyrmling_fam] run function undermagic:entity/wyrmling/wyrmling_fam_tick
execute as @s[tag=um.healing_soul] run function undermagic:entity/reaper_soul/healing_soul_tick
execute as @s[tag=um.offense_soul] run function undermagic:entity/reaper_soul/offense_soul_tick
execute as @s[tag=um.abyssal_revenant] run particle smoke ~ ~1 ~ 0.2 0.4 0.2 0 10

#crafting
execute as @s[tag=um.iron_block] run function undermagic:block/iron_block
execute as @s[tag=um.undercrafter] run function undermagic:block/undercrafter/tick
execute as @s[tag=um.bloodchalice] run function undermagic:block/bloodchalice/tick
execute as @s[tag=um.ichorbasin] run function undermagic:block/ichorbasin_tick
execute as @s[tag=um.pedestal] run function undermagic:block/pedestal_tick
