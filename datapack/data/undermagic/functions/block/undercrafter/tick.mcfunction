
execute if entity @s[tag=um.has_recipe] store success score temp um.dummy run data modify entity @s ArmorItems[3].tag.item_cache set from block ~ ~1 ~ Items[{Slot:16b}]
execute if entity @s[tag=um.has_recipe] positioned ~ ~1 ~ if score temp um.dummy matches 1 run function undermagic:block/undercrafter/process_recipe
execute if entity @s[tag=um.has_recipe] positioned ~ ~1 ~ unless data block ~ ~ ~ Items[{Slot:16b}] run function undermagic:block/undercrafter/process_recipe
execute if entity @s[tag=um.has_recipe] run function undermagic:block/undercrafter/check_recipes

execute if score $timer_20 um.dummy matches 0 run particle minecraft:flame ~1.5 ~1.25 ~0.5 -0.5 0 0.5 0.1 0 normal
execute if score $timer_20 um.dummy matches 1 run particle minecraft:flame ~0.5 ~1.25 ~1.5 -0.5 0 0 0.1 0 normal
execute if score $timer_20 um.dummy matches 2 run particle minecraft:flame ~-0.5 ~1.25 ~1.5 -0.5 0 -0.5 0.1 0 normal
execute if score $timer_20 um.dummy matches 3 run particle minecraft:flame ~-1.5 ~1.25 ~0.5 0 0 -0.5 0.1 0 normal
execute if score $timer_20 um.dummy matches 4 run particle minecraft:flame ~-1.5 ~1.25 ~-0.5 0.5 0 -0.5 0.1 0 normal
execute if score $timer_20 um.dummy matches 5 run particle minecraft:flame ~-0.5 ~1.25 ~-1.5 0.5 0 0 0.1 0 normal
execute if score $timer_20 um.dummy matches 6 run particle minecraft:flame ~0.5 ~1.25 ~-1.5 0.5 0 0.5 0.1 0 normal
execute if score $timer_20 um.dummy matches 7 run particle minecraft:flame ~1.5 ~1.25 ~-0.5 0 0 0.5 0.1 0 normal

execute if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown:2147483647}
execute unless block ~ ~1 ~ minecraft:barrel run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrel",Count:1b}}]
execute unless block ~ ~1 ~ minecraft:barrel run kill @s
