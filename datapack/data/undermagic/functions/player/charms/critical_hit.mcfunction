execute store success score temp0 um.dummy run attribute @s minecraft:generic.attack_damage modifier remove 08810db6-9a9f-4dc4-9b4a-16b2d36b9914
execute if score temp0 um.dummy matches 1.. run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.7
execute if score temp0 um.dummy matches 1.. run playsound minecraft:entity.zombie.hurt player @a ~ ~ ~ 1 0.5
execute if score temp0 um.dummy matches 1.. run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 10
scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
execute if score $math.out_0 um.dummy matches 1..10 run attribute @s minecraft:generic.attack_damage modifier add 08810db6-9a9f-4dc4-9b4a-16b2d36b9914 critical_hit 1 multiply_base
execute if score $math.out_0 um.dummy matches 11..15 if score @s um.crit_charms matches 2.. run attribute @s minecraft:generic.attack_damage modifier add 08810db6-9a9f-4dc4-9b4a-16b2d36b9914 critical_hit 1 multiply_base
execute if score $math.out_0 um.dummy matches 16..20 if score @s um.crit_charms matches 3.. run attribute @s minecraft:generic.attack_damage modifier add 08810db6-9a9f-4dc4-9b4a-16b2d36b9914 critical_hit 1 multiply_base
execute if score $math.out_0 um.dummy matches 21..25 if score @s um.crit_charms matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 08810db6-9a9f-4dc4-9b4a-16b2d36b9914 critical_hit 1 multiply_base