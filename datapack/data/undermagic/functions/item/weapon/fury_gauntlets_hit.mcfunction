execute unless score @s um.gaunt_combo matches 100.. run scoreboard players add @s um.gaunt_combo 1
scoreboard players set @s um.gaunt_timer 215
scoreboard players operation @s um.gaunt_timer -= @s um.gaunt_combo
scoreboard players operation @s um.gaunt_timer -= @s um.gaunt_combo
scoreboard players operation $temp um.dummy = @s um.gaunt_combo
scoreboard players operation $temp um.dummy %= $cons.5 um.dummy
execute if score $temp um.dummy matches 0 run attribute @s minecraft:generic.attack_damage modifier remove 84c4661b-6b45-4647-9744-df132b0ff7c8
execute if score $temp um.dummy matches 0 run playsound minecraft:entity.zombified_piglin.angry player @a ~ ~ ~ 1 2
execute if score @s um.gaunt_combo matches 5 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.1 multiply
execute if score @s um.gaunt_combo matches 10 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.2 multiply
execute if score @s um.gaunt_combo matches 15 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.3 multiply
execute if score @s um.gaunt_combo matches 20 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.4 multiply
execute if score @s um.gaunt_combo matches 25 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.5 multiply
execute if score @s um.gaunt_combo matches 30 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.6 multiply
execute if score @s um.gaunt_combo matches 35 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.7 multiply
execute if score @s um.gaunt_combo matches 40 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.8 multiply
execute if score @s um.gaunt_combo matches 45 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 0.9 multiply
execute if score @s um.gaunt_combo matches 50 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.0 multiply
execute if score @s um.gaunt_combo matches 55 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.1 multiply
execute if score @s um.gaunt_combo matches 60 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.2 multiply
execute if score @s um.gaunt_combo matches 65 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.3 multiply
execute if score @s um.gaunt_combo matches 70 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.4 multiply
execute if score @s um.gaunt_combo matches 75 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.5 multiply
execute if score @s um.gaunt_combo matches 80 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.6 multiply
execute if score @s um.gaunt_combo matches 85 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.7 multiply
execute if score @s um.gaunt_combo matches 90 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.8 multiply
execute if score @s um.gaunt_combo matches 95 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 1.9 multiply
execute if score @s um.gaunt_combo matches 100 run attribute @s minecraft:generic.attack_damage modifier add 84c4661b-6b45-4647-9744-df132b0ff7c8 gauntlets_multi 2.0 multiply
