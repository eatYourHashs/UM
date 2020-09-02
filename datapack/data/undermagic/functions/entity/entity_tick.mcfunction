
execute if score $timer_10 um.dummy matches 0 run function undermagic:entity/entity_interval

execute if entity @s[type=ender_dragon] run function undermagic:entity/ender_dragon/tick
execute if entity @s[type=arrow] run function undermagic:entity/generic/arrow_tick
execute if entity @s[tag=um_shadow_guardian] run function undermagic:entity/generic/shadow_guardian_tick
execute if entity @s[tag=um_blood_cloud] run function undermagic:entity/generic/blood_cloud_tick
execute if entity @s[tag=um_projectile] run function undermagic:entity/projectile/tick

execute as @s[tag=um_greater_demon] run function undermagic:greater_demon_tick
execute as @s[tag=um_lesser_demon] run function undermagic:lesser_demon_tick

execute as @s[tag=um_dragon_special] run function undermagic:dragon_special_tick
execute as @s[tag=um_fireshot] run scoreboard players add @s um.dummy_three 1
execute as @s[tag=um_fireshot,scores={um.dummy_three=100..}] run kill @s
execute as @s[tag=um_greatbow_proc] run function undermagic:greatbow_shot_tick

execute as @s[tag=um_demon_portal] run particle witch ~ ~1.5 ~ 0.2 0.5 0.2 0 2
execute as @s[tag=um_demon_portal] run particle flame ~ ~1.5 ~ 0.2 0.5 0.2 0 1

execute as @s[tag=um_shadow_rift] run function undermagic:rift_tick

execute as @s[tag=um_shadebeast] run function undermagic:shadebeast_tick
execute as @s[tag=um_salamander] run function undermagic:entity/salamander/tick
execute as @s[tag=um_wyrmling] run function undermagic:entity/wyrmling/tick
execute as @s[tag=um_abyss_spawning] run function undermagic:spawn_abyss_spread
execute as @s[tag=um_voidling] run function undermagic:entity/voidling/tick
execute as @s[tag=um_oblivion_charge] run function undermagic:oblivion_charge
execute as @s[tag=um_iron_block] run function undermagic:iron_block

execute as @s[tag=um_wyrmling_fam] run function undermagic:entity/wyrmling/wyrmling_fam_tick
execute as @s[tag=um_healing_soul] run function undermagic:healing_soul_tick
execute as @s[tag=um_offense_soul] run function undermagic:offense_soul_tick
execute as @s[tag=um_abyssal_revenant] run particle smoke ~ ~1 ~ 0.2 0.4 0.2 0 10

#crafting
execute as @s[tag=um_undercrafter] run function undermagic:block/undercrafter_tick
execute as @s[tag=um_bloodchalice] run function undermagic:block/bloodchalice_tick
execute as @s[tag=um_ichorbasin] run function undermagic:block/ichorbasin_tick
execute as @s[tag=um_pedestal] run function undermagic:block/pedestal_tick
