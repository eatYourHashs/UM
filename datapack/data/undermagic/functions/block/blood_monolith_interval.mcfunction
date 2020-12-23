data merge entity @s {Rotation:[90F,0F],Fire:100}

execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ end_stone
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper
execute if block ~ ~ ~ air run loot give @p loot undermagic:items/blood_monolith
execute if block ~ ~ ~ air run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:end_stone",Count:1b}}]
execute if block ~ ~ ~ air run kill @s