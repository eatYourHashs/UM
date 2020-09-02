tag @s add um_processed
execute if block ~ ~-1 ~ magma_block run function undermagic:entity/salamander/summon
execute if block ~ ~-1 ~ magma_block run tp @s ~ -200 ~
execute store result score @s um.dummy run loot spawn ~ -200 ~ loot undermagic:um_rand/rand1_100
execute if score @s um.dummy matches 100.. run function undermagic:entity/salamander/summon
execute if score @s um.dummy matches 100.. run tp @s ~ -200 ~
execute if block ~ ~-1 ~ obsidian if score abyss_spawned um.dummy matches 1 run function undermagic:entity/voidling/summon
execute if block ~ ~-1 ~ obsidian if score abyss_spawned um.dummy matches 1 run tp @s ~ -200 ~