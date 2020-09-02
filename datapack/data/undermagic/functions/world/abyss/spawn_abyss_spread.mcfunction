scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy_two matches 1 run fill ~-6 128 ~-6 ~6 100 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 1 run fill ~-6 128 ~-6 ~6 100 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 1 run fill ~-6 128 ~-6 ~6 100 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 1 run fill ~-6 128 ~-6 ~6 100 ~6 minecraft:lava replace minecraft:magma_block
execute if score @s um.dummy_two matches 2 run fill ~-6 99 ~-6 ~6 80 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 2 run fill ~-6 99 ~-6 ~6 80 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 2 run fill ~-6 99 ~-6 ~6 80 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 2 run fill ~-6 99 ~-6 ~6 80 ~6 minecraft:lava replace minecraft:magma_block
execute if score @s um.dummy_two matches 3 run fill ~-6 79 ~-6 ~6 60 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 3 run fill ~-6 79 ~-6 ~6 60 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 3 run fill ~-6 79 ~-6 ~6 60 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 3 run fill ~-6 79 ~-6 ~6 60 ~6 minecraft:lava replace minecraft:magma_block
execute if score @s um.dummy_two matches 4 run fill ~-6 59 ~-6 ~6 40 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 4 run fill ~-6 59 ~-6 ~6 40 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 4 run fill ~-6 59 ~-6 ~6 40 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 4 run fill ~-6 59 ~-6 ~6 40 ~6 minecraft:lava replace minecraft:magma_block
execute if score @s um.dummy_two matches 5 run fill ~-6 39 ~-6 ~6 20 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 5 run fill ~-6 39 ~-6 ~6 20 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 5 run fill ~-6 39 ~-6 ~6 20 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 5 run fill ~-6 39 ~-6 ~6 20 ~6 minecraft:lava replace minecraft:magma_block
execute if score @s um.dummy_two matches 6 run fill ~-6 19 ~-6 ~6 0 ~6 minecraft:obsidian replace minecraft:netherrack
execute if score @s um.dummy_two matches 6 run fill ~-6 19 ~-6 ~6 0 ~6 minecraft:glowstone replace minecraft:nether_quartz_ore
execute if score @s um.dummy_two matches 6 run fill ~-6 19 ~-6 ~6 0 ~6 minecraft:lava replace minecraft:soul_sand
execute if score @s um.dummy_two matches 6 run fill ~-6 19 ~-6 ~6 0 ~6 minecraft:lava replace minecraft:magma_block
#execute store result score temp2 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
#execute if score temp2 um.dummy matches 1..3 store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
#execute if score temp2 um.dummy matches 1..3 if score temp um.dummy matches 1 positioned ~ 80 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 1..3 if score temp um.dummy matches 2 positioned ~ 60 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 1..3 if score temp um.dummy matches 3 positioned ~ 40 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 4..6 store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
#execute if score temp2 um.dummy matches 4..6 if score temp um.dummy matches 1 positioned ~3 80 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 4..6 if score temp um.dummy matches 2 positioned ~3 60 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 4..6 if score temp um.dummy matches 3 positioned ~3 40 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 7..10 store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
#execute if score temp2 um.dummy matches 7..10 if score temp um.dummy matches 1 positioned ~ 80 ~3 run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 7..10 if score temp um.dummy matches 2 positioned ~ 60 ~3 run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 7..10 if score temp um.dummy matches 3 positioned ~ 40 ~3 run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 11..14 store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
#execute if score temp2 um.dummy matches 11..14 if score temp um.dummy matches 1 positioned ~-3 80 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 11..14 if score temp um.dummy matches 2 positioned ~-3 60 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 11..14 if score temp um.dummy matches 3 positioned ~-3 40 ~ run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 15..18 store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
#execute if score temp2 um.dummy matches 15..18 if score temp um.dummy matches 1 positioned ~ 80 ~-3 run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 15..18 if score temp um.dummy matches 2 positioned ~ 60 ~-3 run function undermagic:world/abyss/spawn_abyss_feature_recur
#execute if score temp2 um.dummy matches 15..18 if score temp um.dummy matches 3 positioned ~ 40 ~-3 run function undermagic:world/abyss/spawn_abyss_feature_recur
execute if score @s um.dummy_two matches 6 run tp @s ^ ^ ^-2
execute if score @s um.dummy_two matches 6 run scoreboard players set @s um.dummy_two 0
execute if score @s um.dummy matches 600.. run kill @s