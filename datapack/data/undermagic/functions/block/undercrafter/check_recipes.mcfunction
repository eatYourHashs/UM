
tag @s remove um.has_recipe
item replace block ~ ~ ~ container.16 with minecraft:air

execute unless data block ~ ~ ~ Items[{Slot:2b}] run item replace block ~ ~ ~ container.2 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run item replace block ~ ~ ~ container.3 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run item replace block ~ ~ ~ container.4 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run item replace block ~ ~ ~ container.11 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run item replace block ~ ~ ~ container.12 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run item replace block ~ ~ ~ container.13 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run item replace block ~ ~ ~ container.20 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run item replace block ~ ~ ~ container.21 with minecraft:barrier{um_id:"empty"}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run item replace block ~ ~ ~ container.22 with minecraft:barrier{um_id:"empty"}

function undermagic:block/undercrafter/recipes

data remove block ~ ~ ~ Items[{tag:{um_id:"empty"}}]
execute if data block ~ ~ ~ Items[{Slot:16b}] run tag @s add um.has_recipe
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~ ~ Items[{Slot:16b}]
