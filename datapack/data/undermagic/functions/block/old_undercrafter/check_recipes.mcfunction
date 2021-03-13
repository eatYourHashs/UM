
tag @s remove um.has_recipe
replaceitem block ~ ~ ~ container.16 minecraft:air

execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run replaceitem block ~ ~ ~ container.12 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run replaceitem block ~ ~ ~ container.13 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 minecraft:barrier{um_id:"empty"}

function undermagic:block/undercrafter/recipes

data remove block ~ ~ ~ Items[{tag:{um_id:"empty"}}]
execute if data block ~ ~ ~ Items[{Slot:16b}] run tag @s add um.has_recipe
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~ ~ Items[{Slot:16b}]
