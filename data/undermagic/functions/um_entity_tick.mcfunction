execute as @s[tag=um_greater_demon] run function undermagic:greater_demon_tick
execute as @s[tag=um_lesser_demon] run function undermagic:lesser_demon_tick
execute as @s[tag=um_undercrafter] run function undermagic:undercrafter_tick
execute as @s[tag=um_bloodchalice] run function undermagic:bloodchalice_tick
execute as @s[tag=um_ichorbasin] run function undermagic:ichorbasin_tick
execute as @s[tag=um_pedestal] run function undermagic:pedestal_tick

execute at @s[type=arrow,tag=um_explosive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute at @s[type=arrow,tag=um_dragons_proc] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute as @s[type=arrow,tag=um_dragons_proc,nbt=!{life:0s},scores={um.dummy=2..}] run function undermagic:arrow_dragons_blast
execute as @s[type=arrow,tag=um_explosive,nbt=!{life:0s},scores={um.dummy=2..}] run function undermagic:arrow_denature
execute as @s[type=arrow,tag=um_split_shot] run particle smoke
execute as @s[type=arrow] run scoreboard players add @s um.dummy 1

execute as @s[tag=um_ice_bolt] run function undermagic:ice_bolt_tick
execute as @s[tag=um_dragon_special] run function undermagic:dragon_special_tick
execute as @s[tag=um_phantasmal_dagger] run function undermagic:phantasmal_dagger_tick
execute as @s[tag=um_phantasmal_dagger_spec] run function undermagic:phantasmal_dagger_spec_tick
execute as @s[tag=um_elder_bolt] run function undermagic:elder_bolt_tick
execute as @s[tag=um_dark_orb] run function undermagic:dark_orb_tick
execute as @s[tag=um_large_dark_orb] run function undermagic:large_dark_orb_tick
execute as @s[tag=um_shadesull_basic_bullet] run function undermagic:basic_bullet_tick
execute as @s[tag=um_shadesull_explosive_bullet] run function undermagic:explosive_bullet_tick
execute as @s[tag=um_demon_portal] run particle witch ~ ~1.5 ~ 0.2 0.5 0.2 0 2
execute as @s[tag=um_demon_portal] run particle flame ~ ~1.5 ~ 0.2 0.5 0.2 0 1
execute as @s[tag=um_pit_lord_boss] run function undermagic:pit_lord_tick
execute as @s[tag=um_blood_boss] run function undermagic:blood_amalgam_tick
execute as @s[tag=um_elemental] run function undermagic:elemental_tick
execute as @s[tag=um_shadow_rift] run function undermagic:rift_tick

execute as @s[tag=um_shadow_guardian] run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0 1
execute as @s[tag=um_shadow_guardian] facing entity @e[limit=1,sort=nearest,tag=um_guardian_target,distance=..10] feet run tp @s ^ ^ ^0.4
execute as @s[tag=um_shadow_guardian] run effect give @e[tag=um_guardian_target,type=!#undermagic:undead,distance=..1] instant_damage 1 1
execute as @s[tag=um_shadow_guardian] run effect give @e[tag=um_guardian_target,type=#undermagic:undead,distance=..1] instant_health 1 1
execute as @s[tag=um_shadow_guardian] run tag @e[tag=um_guardian_target,distance=..1] remove um_guardian_target
tag @s[tag=um_shadow_guardian] remove um_guardian_target

execute as @s[tag=um_elder_eye] run function undermagic:elder_eye_tick
execute as @s[tag=um_elder_hand] run function undermagic:elder_hand_tick
execute as @s[tag=um_shadebeast] run function undermagic:shadebeast_tick
execute unless entity @s[tag=um_shadebeast_alpha] run bossbar set undermagic:sb_alpha visible false
execute as @s[tag=um_shadebeast_alpha] run function undermagic:shadebeast_alpha_tick
execute as @s[tag=um_salamander] run function undermagic:salamander_tick
execute as @s[tag=um_wyrmling] run function undermagic:entity/wyrmling/tick
execute as @s[tag=um_abyss_spawning] run function undermagic:spawn_abyss_spread
execute as @s[tag=um_voidling] run function undermagic:voidling_tick
execute as @s[tag=um_shadesull] run function undermagic:shadesull_tick
execute as @s[tag=um_shadesull_elder_hand] run function undermagic:entity/shadesull/shadesull_elder_hand_tick
execute as @s[tag=um_oblivion_charge] run function undermagic:oblivion_charge
execute as @s[tag=um_iron_block] run function undermagic:iron_block
execute as @s[tag=um_dragon_acid] run function undermagic:dragon_acid_tick
execute as @s[tag=um_demon_flame] run function undermagic:demon_flame

execute as @s[tag=um_blood_cloud_1] run function undermagic:blood_cloud_1
execute as @s[tag=um_blood_cloud_2] run function undermagic:blood_cloud_2
execute as @s[tag=um_blood_cloud_3] run function undermagic:blood_cloud_3
execute as @s[tag=um_blood_drop_1] run function undermagic:blood_drop_1
execute as @s[tag=um_blood_drop_3] run function undermagic:blood_drop_3

execute as @s[tag=um_elder_wall] run function undermagic:elder_wall_tick
execute as @s[tag=um_wyrmling_fam] run function undermagic:entity/wyrmling/wyrmling_fam_tick
execute as @s[tag=um_fireshot] run scoreboard players add @s um.dummy_three 1
execute as @s[tag=um_fireshot,scores={um.dummy_three=100..}] run kill @s
effect give @s[tag=um_abyssal_revenant] invisibility 1 1 true
execute as @s[tag=um_abyssal_revenant] run particle smoke ~ ~1 ~ 0.2 0.4 0.2 0 10
execute as @s[tag=um_greatbow_proc] run function undermagic:greatbow_shot_tick
execute as @s[tag=um_healing_soul] run function undermagic:healing_soul_tick
execute as @s[tag=um_offense_soul] run function undermagic:offense_soul_tick

execute as @s[tag=um_disciple_of_destruction_model] unless entity @e[tag=um_disciple_of_destruction,distance=..5] run kill @s
execute as @s[tag=um_disciple_of_destruction] run function undermagic:disciple_of_destruction_tick
execute as @s[tag=um_disciple_of_destruction_blast] run function undermagic:disciple_of_destruction_blast_tick
execute as @s[tag=um_disciple_of_death] run function undermagic:disciple_of_death_tick