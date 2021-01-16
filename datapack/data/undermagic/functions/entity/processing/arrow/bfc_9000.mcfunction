
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
execute as @e[scores={um.bfc_hits=1..}] at @s run function undermagic:item/weapon/bfc_9000_damage
