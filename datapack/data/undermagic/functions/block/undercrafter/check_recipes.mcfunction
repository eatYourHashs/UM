
tag @s remove um.has_recipe
item block ~ ~ ~ container.16 replace minecraft:air

execute unless data block ~ ~ ~ Items[{Slot:2b}] run item block ~ ~ ~ container.2 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run item block ~ ~ ~ container.3 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run item block ~ ~ ~ container.4 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run item block ~ ~ ~ container.11 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run item block ~ ~ ~ container.12 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run item block ~ ~ ~ container.13 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run item block ~ ~ ~ container.20 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run item block ~ ~ ~ container.21 replace minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run item block ~ ~ ~ container.22 replace minecraft:barrier{um_id:"empty"}

function undermagic:block/undercrafter/recipes

data remove block ~ ~ ~ Items[{tag:{um_id:"empty"}}]
execute if data block ~ ~ ~ Items[{Slot:16b}] run tag @s add um.has_recipe
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~ ~ Items[{Slot:16b}]
