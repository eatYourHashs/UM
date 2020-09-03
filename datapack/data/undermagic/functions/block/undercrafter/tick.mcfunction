

execute if entity @s[tag=um_has_recipe] store success score temp um.dummy run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~1 ~ Items[{Slot:16b}]
execute if entity @s[tag=um_has_recipe] positioned ~ ~1 ~ if score temp um.dummy matches 1 run function undermagic:block/undercrafter/process_recipe
execute if entity @s[tag=um_has_recipe] positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:16b}] run function undermagic:block/undercrafter/process_recipe
execute if entity @s[tag=um_has_recipe] run function undermagic:block/undercrafter/check_recipes

particle flame ~ ~1 ~ 0.4 0.4 0.4 0 1

execute if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown:2147483647}
execute unless block ~ ~1 ~ minecraft:barrel run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrel",Count:1b}}]
execute unless block ~ ~1 ~ minecraft:barrel run kill @s
