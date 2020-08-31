execute store result score temp um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score temp um.dummy matches 1..30 run fill ~-1 ~ ~-1 ~1 ~4 ~1 obsidian
execute if score temp um.dummy matches 1..30 run fill ~ ~4 ~ ~ ~7 ~ obsidian
execute if score temp um.dummy matches 31..50 run fill ~-2 ~ ~-2 ~2 ~5 ~2 obsidian
execute if score temp um.dummy matches 31..50 run fill ~-1 ~5 ~-1 ~1 ~8 ~1 obsidian
execute if score temp um.dummy matches 31..50 run fill ~ ~8 ~ ~ ~11 ~ obsidian
execute if score temp um.dummy matches 51..65 run fill ~-3 ~ ~-3 ~3 ~6 ~3 obsidian
execute if score temp um.dummy matches 51..65 run fill ~-2 ~6 ~-2 ~2 ~10 ~2 obsidian
execute if score temp um.dummy matches 51..65 run fill ~-1 ~10 ~-1 ~1 ~14 ~1 obsidian
execute if score temp um.dummy matches 51..65 run fill ~ ~14 ~ ~ ~17 ~ obsidian