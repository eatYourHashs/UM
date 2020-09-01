execute store result score @s um.dummy_two run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_3
execute if entity @s[scores={um.dummy_two=1}] at @r[distance=..64] run tp ^ ^ ^-10
execute if entity @s[scores={um.dummy_two=2}] at @r[distance=..64] run tp ^-10 ^ ^
execute if entity @s[scores={um.dummy_two=3}] at @r[distance=..64] run tp ^10 ^ ^
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
