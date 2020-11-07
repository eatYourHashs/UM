execute store result score temp um.dummy_two run loot spawn 0 -10 0 loot undermagic:technical/rand1_12
playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1 0.5
particle minecraft:soul ~ ~0.05 ~ 0.5 0 0.5 0.5 100
execute if score temp um.dummy_two matches 1..4 run summon zombie ~1 ~1 ~1
execute if score temp um.dummy_two matches 1..4 run summon zombie ~1 ~1 ~-1
execute if score temp um.dummy_two matches 1..4 run summon zombie ~-1 ~1 ~1
execute if score temp um.dummy_two matches 1..4 run summon zombie ~-1 ~1 ~-1
execute if score temp um.dummy_two matches 5..7 run summon skeleton ~1 ~1 ~1
execute if score temp um.dummy_two matches 5..7 run summon skeleton ~-1 ~1 ~1
execute if score temp um.dummy_two matches 5..7 run summon skeleton ~1 ~1 ~-1
execute if score temp um.dummy_two matches 5..7 run summon skeleton ~-1 ~1 ~-1
execute if score temp um.dummy_two matches 8..9 run summon wither_skeleton ~1 ~1 ~1
execute if score temp um.dummy_two matches 8..9 run summon wither_skeleton ~-1 ~1 ~1
execute if score temp um.dummy_two matches 8..9 run summon wither_skeleton ~1 ~1 ~-1
execute if score temp um.dummy_two matches 8..9 run summon wither_skeleton ~-1 ~1 ~-1
execute if score temp um.dummy_two matches 10..11 run summon phantom ~1 ~1 ~1
execute if score temp um.dummy_two matches 10..11 run summon phantom ~1 ~1 ~-1
execute if score temp um.dummy_two matches 10..11 run summon phantom ~-1 ~1 ~1
execute if score temp um.dummy_two matches 10..11 run summon phantom ~-1 ~1 ~-1
execute if score temp um.dummy_two matches 12 run summon zoglin ~ ~1 ~