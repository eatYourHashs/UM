data merge entity @s {Rotation:[90F,0F],Fire:100}

execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ crying_obsidian
execute if entity @s[tag=um.needs_dropper] run forceload add ~ ~
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper
execute if block ~ ~ ~ air run loot give @p loot undermagic:items/chunk_loader
execute if block ~ ~ ~ air run forceload remove ~ ~
execute if block ~ ~ ~ air run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}}]
execute if block ~ ~ ~ air run kill @s