execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger_helmet] run tag @s add um.ar_helm
execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger_chestplate] run tag @s add um.ar_chest
execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger_leggings] run tag @s add um.ar_legs
execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger_boots] run tag @s add um.ar_boots
execute if entity @s[predicate=undermagic:armor_sets/primal] run tag @s add um.primal
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.primal_proc] run tag @s add um.primal_spec
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.venom_proc] run tag @s add um.venom
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.dragons_proc] run tag @s add um.acid
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.shadow_proc] run tag @s add um.shadow
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.impact_proc] run tag @s add um.impact
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.hellfire_proc] run tag @s add um.hellfire
execute if entity @e[type=arrow,sort=nearest,distance=..3,tag=um.doom_proc] run tag @s add um.doom
execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger,scores={um.ar_stealth=100..}] run tag @s add um.ar_stealth
function undermagic:entity/projectile/oathbow