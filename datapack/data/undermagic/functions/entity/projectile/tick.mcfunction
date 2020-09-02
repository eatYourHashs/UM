
execute if entity @s[tag=um_ice_bolt] run function undermagic:entity/projectile/ice_bolt_tick
execute if entity @s[tag=um_phantasmal_dagger] run function undermagic:entity/projectile/phantasmal_dagger_tick
execute if entity @s[tag=um_phantasmal_dagger_spec] run function undermagic:entity/projectile/phantasmal_dagger_spec_tick
execute if entity @s[tag=um_dark_orb] run function undermagic:entity/projectile/dark_orb_tick
execute if entity @s[tag=um_large_dark_orb] run function undermagic:entity/projectile/large_dark_orb_tick
execute if entity @s[tag=um_dragon_acid] run function undermagic:entity/projectile/dragon_acid_tick
execute if entity @s[tag=um_demon_flame] run function undermagic:entity/projectile/demon_flame
execute if entity @s[tag=um_dragon_special] run function undermagic:entity/projectile/dragon_special_tick

execute if entity @s[tag=um_fireshot] run scoreboard players add @s um.dummy_three 1
execute if entity @s[tag=um_fireshot,scores={um.dummy_three=100..}] run kill @s
