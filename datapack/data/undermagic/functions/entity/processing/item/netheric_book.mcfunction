
tag @s remove um.processed

execute if block ~ ~-0.9 ~ minecraft:crafting_table run tag @s add um.processed
execute if block ~ ~-0.9 ~ minecraft:crafting_table run function undermagic:block/undercrafter/init

execute if block ~ ~-0.9 ~ minecraft:quartz_pillar run tag @s add um.processed
execute if block ~ ~-0.9 ~ minecraft:quartz_pillar run function undermagic:block/pedestal_init

execute if block ~ ~ ~ minecraft:cauldron run tag @s add um.processed
execute if block ~ ~ ~ minecraft:cauldron unless entity @e[tag=um.bloodchalice,distance=..2] run function undermagic:block/bloodchalice/init
