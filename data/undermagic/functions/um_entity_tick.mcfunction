execute as @s[tag=um_greater_demon] at @s run function undermagic:greater_demon_tick
execute as @s[tag=um_lesser_demon] at @s run function undermagic:lesser_demon_tick
execute as @s[tag=um_undercrafter] at @s run function undermagic:undercrafter_tick
execute as @s[tag=um_bloodchalice] at @s run function undermagic:bloodchalice_tick
execute as @s[tag=um_ichorbasin] at @s run function undermagic:ichorbasin_tick
execute as @s[tag=um_pedestal] at @s run function undermagic:pedestal_tick
execute at @s[type=arrow,tag=um_explosive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute at @s[type=arrow,tag=um_dragons_proc] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute as @s[type=arrow,tag=um_dragons_proc,nbt=!{life:0s},scores={um.dummy=2..}] at @s run function undermagic:arrow_dragons_blast
execute as @s[type=arrow,tag=um_explosive,nbt=!{life:0s},scores={um.dummy=2..}] at @s run function undermagic:arrow_denature
execute as @s[tag=um_ice_bolt] at @s run function undermagic:ice_bolt_tick
execute as @s[tag=um_dragon_special] at @s run function undermagic:dragon_special_tick
execute as @s[tag=um_phantasmal_dagger] at @s run function undermagic:phantasmal_dagger_tick
execute as @s[tag=um_phantasmal_dagger_spec] at @s run function undermagic:phantasmal_dagger_spec_tick
execute as @s[tag=um_elder_bolt] at @s run function undermagic:elder_bolt_tick
execute as @s[tag=um_dark_orb] at @s run function undermagic:dark_orb_tick
execute as @s[tag=um_large_dark_orb] at @s run function undermagic:large_dark_orb_tick
execute as @s[tag=um_shadesull_basic_bullet] at @s run function undermagic:basic_bullet_tick
execute as @s[tag=um_shadesull_explosive_bullet] at @s run function undermagic:explosive_bullet_tick
execute as @s[tag=um_demon_portal] at @s run particle witch ~ ~1.5 ~ 0.2 0.5 0.2 0 2
execute as @s[tag=um_demon_portal] at @s run particle flame ~ ~1.5 ~ 0.2 0.5 0.2 0 1
execute as @s[tag=um_pit_lord_boss] at @s run function undermagic:pit_lord_tick
execute as @s[tag=um_blood_boss] at @s run function undermagic:blood_amalgam_tick
execute as @s[tag=um_elemental] at @s run function undermagic:elemental_tick
execute as @s[tag=um_shadow_rift] at @s run function undermagic:rift_tick
execute as @s[tag=um_shadow_guardian] at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0 1
execute as @s[tag=um_shadow_guardian] at @s facing entity @e[limit=1,sort=nearest,tag=um_guardian_target,distance=..10] feet run tp @s ^ ^ ^0.4
execute as @s[tag=um_shadow_guardian] at @s run effect give @e[tag=um_guardian_target,tag=!um_undead,distance=..1] instant_damage 1 1
execute as @s[tag=um_shadow_guardian] at @s run effect give @e[tag=um_guardian_target,tag=um_undead,distance=..1] instant_health 1 1
execute as @s[tag=um_shadow_guardian] at @s run tag @e[tag=um_guardian_target,distance=..1] remove um_guardian_target
tag @s[tag=um_shadow_guardian] remove um_guardian_target
execute as @s[tag=um_elder_eye] at @s run function undermagic:elder_eye_tick
execute as @s[tag=um_elder_hand] at @s run function undermagic:elder_hand_tick
execute as @s[tag=um_shadebeast] at @s run function undermagic:shadebeast_tick
execute unless entity @s[tag=um_shadebeast_alpha] run bossbar set undermagic:sb_alpha visible false
execute as @s[tag=um_shadebeast_alpha] at @s run function undermagic:shadebeast_alpha_tick
execute as @s[tag=um_salamander] at @s run function undermagic:salamander_tick
execute as @s[tag=um_wyrmling] at @s run function undermagic:wyrmling_tick
execute as @s[tag=um_abyss_spawning] at @s run function undermagic:spawn_abyss_spread
execute as @s[tag=um_voidling] at @s run function undermagic:voidling_tick
execute as @s[tag=um_shadesull] at @s run function undermagic:shadesull_tick
execute as @s[tag=um_shadesull_elder_hand] at @s run function undermagic:shadesull_elder_hand_tick
execute as @s[tag=um_oblivion_charge] at @s run function undermagic:oblivion_charge
execute as @s[tag=um_iron_block] at @s run function undermagic:iron_block
execute as @s[tag=um_dragon_acid] at @s run function undermagic:dragon_acid_tick
execute as @s[tag=um_demon_flame] at @s run function undermagic:demon_flame
execute as @s[tag=um_blood_cloud_1] at @s run function undermagic:blood_cloud_1
execute as @s[tag=um_blood_cloud_2] at @s run function undermagic:blood_cloud_2
execute as @s[tag=um_blood_cloud_3] at @s run function undermagic:blood_cloud_3
execute as @s[tag=um_blood_drop_1] at @s run function undermagic:blood_drop_1
execute as @s[tag=um_blood_drop_3] at @s run function undermagic:blood_drop_3
execute as @s[tag=um_elder_wall] at @s run function undermagic:elder_wall_tick
execute as @s[tag=um_wyrmling_fam] at @s run function undermagic:wyrmling_fam_tick
execute as @s[tag=um_fireshot] at @s run scoreboard players add @s um.dummy_three 1
execute as @s[tag=um_fireshot,scores={um.dummy_three=100..}] at @s run kill @s
effect give @s[tag=um_abyssal_revenant] invisibility 1 1 true
execute as @s[tag=um_abyssal_revenant] at @s run particle smoke ~ ~1 ~ 0.2 0.4 0.2 0 10
execute as @s[tag=um_greatbow_proc] at @s run function undermagic:greatbow_shot_tick
execute as @s[tag=um_healing_soul] at @s run function undermagic:healing_soul_tick
execute as @s[tag=um_offense_soul] at @s run function undermagic:offense_soul_tick
execute as @s[tag=um_disciple_of_destruction_model] at @s unless entity @e[tag=um_disciple_of_destruction,distance=..5] run kill @s
execute as @s[tag=um_disciple_of_destruction] at @s run function undermagic:disciple_of_destruction_tick
execute as @s[tag=um_disciple_of_destruction_blast] at @s run function undermagic:disciple_of_destruction_blast_tick
execute as @s[tag=um_disciple_of_death] at @s run function undermagic:disciple_of_death_tick