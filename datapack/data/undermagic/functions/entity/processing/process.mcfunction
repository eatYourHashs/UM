
tag @s add um_processed

execute if entity @s[type=arrow] run function undermagic:entity/processing/arrow
execute if entity @s[type=ghast] run function undermagic:entity/processing/ghast
execute if entity @s[type=wither_skeleton] run function undermagic:entity/processing/wither_skeleton
execute if entity @s[type=creeper] run function undermagic:entity/processing/creeper
execute if entity @s[type=zombified_piglin] run function undermagic:entity/processing/zombified_piglin
execute if entity @s[type=magma_cube] run function undermagic:entity/processing/magma_cube
execute if entity @s[type=end_crystal] run function undermagic:entity/processing/end_crystal
execute if entity @s[type=item] if data entity @s Item.tag.um_id run function undermagic:entity/processing/item

execute if entity @s[type=wither] run tag @s add um_entity
execute if entity @s[type=ender_dragon] if data entity @s DragonPhase run tag @s add um_entity
execute if entity @e[tag=um_charm_table] run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:'{"text":"Charm Table","italic":false}'} replace
