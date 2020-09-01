
execute if entity @s[type=wither] run function undermagic:entity/generic/wither_interval

execute if entity @s[tag=um_demon_portal] run function undermagic:entity/generic/demon_portal
execute if entity @s[tag=um_shadow_rift] run function undermagic:rift_interval
execute if entity @e[tag=um_salamander] run function undermagic:salamander_interval

effect give @s[tag=um_elemental] invisibility 2 1 true
effect give @s[tag=um_blood_monolith] invisibility 2 1 true
effect give @s[tag=um_shadebeast] invisibility 2 1 true
effect give @s[tag=um_abyssal_revenant] invisibility 2 1 true

execute if entity @s[tag=um_blood_monolith] rotated 0 0 run tp @s ^ ^ ^
execute if entity @s[tag=um_shadow_guardian] unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute if entity @s[tag=um_warlock_hand] unless entity @a[distance=..10,predicate=undermagic:armor_sets/abyss_warlock] run kill @s
execute if entity @s[tag=um_dragon_wings] unless entity @a[distance=..10,predicate=undermagic:armor_sets/dragon] run kill @s

#Crafting Blocks
execute if entity @s[tag=um_undercrafter] if entity @p[distance=..8] run function undermagic:block/undercrafter_interval
execute if entity @s[tag=um_bloodchalice] if entity @p[distance=..24] run function undermagic:block/bloodchalice_interval
execute if entity @s[tag=um_pedestal] if entity @p[distance=..24] run function undermagic:block/pedestal_interval
execute if entity @s[tag=um_teleporter] run function undermagic:block/teleporter_interval
execute if entity @s[tag=um_charm_table] run function undermagic:block/charm_table_interval
