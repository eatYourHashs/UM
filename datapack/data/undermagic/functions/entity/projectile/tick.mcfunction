
execute if entity @s[tag=um.ice_bolt] run function undermagic:entity/projectile/ice_bolt_tick
execute if entity @s[tag=um.phantasmal_dagger] run function undermagic:entity/projectile/phantasmal_dagger_tick
execute if entity @s[tag=um.phantasmal_dagger_spec] run function undermagic:entity/projectile/phantasmal_dagger_spec_tick
execute if entity @s[tag=um.dark_orb] run function undermagic:entity/projectile/dark_orb_tick
execute if entity @s[tag=um.dark_orb_ex] run function undermagic:entity/projectile/dark_orb_ex_tick
execute if entity @s[tag=um.large_dark_orb] run function undermagic:entity/projectile/large_dark_orb_tick
execute if entity @s[tag=um.dragon_acid] run function undermagic:entity/projectile/dragon_acid_tick
execute if entity @s[tag=um.demon_flame] run function undermagic:entity/projectile/demon_flame
execute if entity @s[tag=um.dragon_special] run function undermagic:entity/projectile/dragon_special_tick
execute if entity @s[tag=um.spectral_sickle] run function undermagic:entity/projectile/spectral_sickle
execute if entity @s[tag=um.bonus_sickle] run function undermagic:entity/projectile/bonus_sickle
execute if entity @s[tag=um.chain_of_umbra] run function undermagic:item/weapon/chain_of_umbra/tick
execute if entity @s[tag=um.iron_whip] run function undermagic:item/weapon/iron_whip/tick
execute if entity @s[tag=um.dragon_lash] run function undermagic:item/weapon/dragon_lash/tick
execute if entity @s[tag=um.magi_missile] run function undermagic:entity/projectile/magi_missile
execute if entity @s[tag=um.lucid_star] run function undermagic:entity/projectile/lucid_star

execute if entity @s[tag=um.fireshot] run scoreboard players add @s um.dummy_three 1
execute if entity @s[tag=um.fireshot,scores={um.dummy_three=100..}] run kill @s
