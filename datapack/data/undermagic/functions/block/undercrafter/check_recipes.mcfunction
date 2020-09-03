
tag @s remove um_has_recipe
replaceitem block ~ ~1 ~ container.16 minecraft:air

execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:12b}] run replaceitem block ~ ~ ~ container.12 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:13b}] run replaceitem block ~ ~ ~ container.13 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 minecraft:barrier{um_id:"empty"}
execute positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 minecraft:barrier{um_id:"empty"}

execute positioned ~ ~1 ~ run function undermagic:block/undercrafter/recipes

data remove block ~ ~1 ~ Items[{tag:{um_id:"empty"}}]
execute if data block ~ ~1 ~ Items[{Slot:16b}] run tag @s add um_has_recipe
execute if data block ~ ~1 ~ Items[{Slot:16b}] run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~1 ~ Items[{Slot:16b}]
