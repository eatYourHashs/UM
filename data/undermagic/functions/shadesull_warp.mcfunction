execute store result score temp um.dummy_two run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_12
execute if score temp um.dummy_two matches 1 at @p run tp @s ~10 ~ ~
execute if score temp um.dummy_two matches 2 at @p run tp @s ~-10 ~ ~
execute if score temp um.dummy_two matches 3 at @p run tp @s ~ ~ ~10
execute if score temp um.dummy_two matches 4 at @p run tp @s ~ ~ ~-10
execute if score temp um.dummy_two matches 5 at @p run tp @s ~10 ~6 ~
execute if score temp um.dummy_two matches 6 at @p run tp @s ~-10 ~6 ~
execute if score temp um.dummy_two matches 7 at @p run tp @s ~ ~6 ~10
execute if score temp um.dummy_two matches 8 at @p run tp @s ~ ~6 ~-10
execute if score temp um.dummy_two matches 9 at @p run tp @s ~10 ~12 ~
execute if score temp um.dummy_two matches 10 at @p run tp @s ~-10 ~12 ~
execute if score temp um.dummy_two matches 11 at @p run tp @s ~ ~12 ~10
execute if score temp um.dummy_two matches 12 at @p run tp @s ~ ~12 ~-10
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
