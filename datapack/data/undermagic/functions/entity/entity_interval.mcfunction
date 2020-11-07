
execute if entity @s[type=wither] run function undermagic:entity/generic/wither_interval

execute if entity @s[tag=um.demon_portal] run function undermagic:entity/generic/demon_portal
execute if entity @s[tag=um.shadow_rift] run function undermagic:entity/rift/interval
execute if entity @e[tag=um.salamander] run function undermagic:entity/salamander/interval

effect give @s[tag=um.blood_monolith] invisibility 2 1 true
effect give @s[tag=um.shadebeast] invisibility 2 1 true
effect give @s[tag=um.abyssal_revenant] invisibility 2 1 true

execute if entity @s[tag=um.blood_monolith] rotated 0 0 run tp @s ^ ^ ^
execute if entity @s[tag=um.shadow_guardian] unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute if entity @s[tag=um.warlock_hand] unless entity @a[distance=..10,predicate=undermagic:armor_sets/abyss_warlock] run kill @s
execute if entity @s[tag=um.dragon_wings] unless entity @a[distance=..10,predicate=undermagic:armor_sets/dragon] run kill @s

#Crafting Blocks
execute if entity @s[tag=um.undercrafter] if entity @p[distance=..8] run function undermagic:block/undercrafter/interval
execute if entity @s[tag=um.bloodchalice] if entity @p[distance=..24] run function undermagic:block/bloodchalice/interval
execute if entity @s[tag=um.pedestal] if entity @p[distance=..24] run function undermagic:block/pedestal_interval
execute if entity @s[tag=um.teleporter] run function undermagic:block/teleporter_interval
execute if entity @s[tag=um.charm_table] run function undermagic:block/charm_table_interval
