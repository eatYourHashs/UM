
execute if block ~ ~-1 ~ minecraft:magma_block run function undermagic:entity/salamander/summon
execute if block ~ ~-1 ~ minecraft:magma_block run tp @s ~ -200 ~

execute store success score temp um.dummy if predicate undermagic:probability/0.01
execute if score temp um.dummy matches 1.. run function undermagic:entity/salamander/summon
execute if score temp um.dummy matches 1.. run tp @s ~ -200 ~

execute if block ~ ~-1 ~ minecraft:obsidian if score abyss_spawned um.dummy matches 1 run function undermagic:entity/voidling/summon
execute if block ~ ~-1 ~ minecraft:obsidian if score abyss_spawned um.dummy matches 1 run tp @s ~ -200 ~