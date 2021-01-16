
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1

scoreboard players set temp um.dummy 0
execute positioned ~ ~1.8 ~ facing ^ ^-0.5 ^10 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-1.7 ^-0.5 ^9.8 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^1.7 ^-0.5 ^9.8 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-3.4 ^-0.5 ^9.4 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^3.4 ^-0.5 ^9.4 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-5 ^-0.5 ^8.7 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^5 ^-0.5 ^8.7 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^ ^0.5 ^10 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-1.7 ^0.5 ^9.8 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^1.7 ^0.5 ^9.8 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-3.4 ^0.5 ^9.4 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^3.4 ^0.5 ^9.4 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^-5 ^0.5 ^8.7 run function undermagic:item/weapon/bfc_9000_cast
execute positioned ~ ~1.8 ~ facing ^5 ^0.5 ^8.7 run function undermagic:item/weapon/bfc_9000_cast
scoreboard players set @s um.bfc_hits 0
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
execute if entity @s[predicate=undermagic:armor_sets/abyss_ranger,scores={um.ar_stealth=100..}] run tag @s add um.ar_stealth
execute as @e[scores={um.bfc_hits=1..}] at @s run function undermagic:item/weapon/bfc_9000_damage
tag @s remove um.ar_helm
tag @s remove um.ar_chest
tag @s remove um.ar_legs
tag @s remove um.ar_boots
tag @s remove um.ar_stealth
tag @s remove um.primal
tag @s remove um.primal_spec
tag @s remove um.venom
tag @s remove um.acid
tag @s remove um.shadow
tag @s remove um.impact