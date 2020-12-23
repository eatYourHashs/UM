particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1
execute if entity @s[scores={um.dummy=10..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1
execute if entity @s[scores={um.dummy=50..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1
execute if entity @s[scores={um.dummy=250..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1

execute unless block ~ ~ ~ minecraft:cauldron unless entity @s[tag=um.needs_dropper] run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:cauldron",Count:1b}}]
execute unless block ~ ~ ~ minecraft:cauldron unless entity @s[tag=um.needs_dropper] run loot give @p loot undermagic:items/blood_chalice
execute unless block ~ ~ ~ minecraft:cauldron unless entity @s[tag=um.needs_dropper] run kill @s