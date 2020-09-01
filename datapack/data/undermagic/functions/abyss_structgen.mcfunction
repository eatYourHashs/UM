execute store result score chunkgen_rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute store result score structgen_rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~ 1 ~ ~4 45 ~4 blackstone
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~1 46 ~1 ~3 60 ~3 blackstone
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~2 61 ~2 ~2 75 ~2 blackstone
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~ 1 ~ ~4 45 ~4 obsidian
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~1 46 ~1 ~3 60 ~3 obsidian
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~2 61 ~2 ~2 75 ~2 obsidian
execute if score chunkgen_rand um.dummy matches 10 run fill ~ 1 ~ ~4 45 ~4 bone_block
execute if score chunkgen_rand um.dummy matches 10 run fill ~1 46 ~1 ~3 60 ~3 bone_block
execute if score chunkgen_rand um.dummy matches 10 run fill ~2 61 ~2 ~2 75 ~2 bone_block
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~ 1 ~ ~6 45 ~6 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~1 46 ~1 ~5 60 ~5 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~2 61 ~2 ~4 75 ~4 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~3 76 ~3 ~3 90 ~3 blackstone
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~ 1 ~ ~6 45 ~6 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~1 46 ~1 ~5 60 ~5 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~2 61 ~2 ~4 75 ~4 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~3 76 ~3 ~3 90 ~3 obsidian
execute if score chunkgen_rand um.dummy matches 20 run fill ~ 1 ~ ~6 45 ~6 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~1 46 ~1 ~5 60 ~5 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~2 61 ~2 ~4 75 ~4 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~3 76 ~3 ~3 90 ~3 bone_block
execute if score chunkgen_rand um.dummy matches 100 if score structgen_rand um.dummy matches 1..50 run function undermagic:spire_init
execute store result score chunkgen_rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~ 127 ~ ~4 100 ~4 blackstone
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~1 99 ~1 ~3 85 ~3 blackstone
execute if score chunkgen_rand um.dummy matches 1..6 run fill ~2 84 ~2 ~2 70 ~2 blackstone
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~ 127 ~ ~4 100 ~4 obsidian
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~1 99 ~1 ~3 85 ~3 obsidian
execute if score chunkgen_rand um.dummy matches 7..9 run fill ~2 84 ~2 ~2 70 ~2 obsidian
execute if score chunkgen_rand um.dummy matches 10 run fill ~ 127 ~ ~4 100 ~4 bone_block
execute if score chunkgen_rand um.dummy matches 10 run fill ~1 99 ~1 ~3 85 ~3 bone_block
execute if score chunkgen_rand um.dummy matches 10 run fill ~2 84 ~2 ~2 70 ~2 bone_block
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~ 127 ~ ~6 100 ~6 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~1 99 ~1 ~5 85 ~5 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~2 84 ~2 ~4 70 ~4 blackstone
execute if score chunkgen_rand um.dummy matches 11..16 run fill ~3 69 ~3 ~3 55 ~3 blackstone
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~ 127 ~ ~6 100 ~6 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~1 99 ~1 ~5 85 ~5 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~2 84 ~2 ~4 70 ~4 obsidian
execute if score chunkgen_rand um.dummy matches 17..19 run fill ~3 69 ~3 ~3 55 ~3 obsidian
execute if score chunkgen_rand um.dummy matches 20 run fill ~ 127 ~ ~6 100 ~6 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~1 99 ~1 ~5 85 ~5 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~2 84 ~2 ~4 70 ~4 bone_block
execute if score chunkgen_rand um.dummy matches 20 run fill ~3 69 ~3 ~3 55 ~3 bone_block
kill @s
