execute store result score temp0 um.dummy run data get entity @s Health
attribute @s minecraft:generic.attack_damage modifier remove 23520e02-f308-40f4-a919-5e03bd775fb2
attribute @s minecraft:generic.movement_speed modifier remove 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d
attribute @s minecraft:generic.armor_toughness modifier remove 7fad711d-14d8-4526-9443-a8ff4d8e7d3f
attribute @s minecraft:generic.attack_speed modifier remove 8c2e8910-0cec-4289-898a-3af402afa755
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 1 run attribute @s minecraft:generic.attack_damage modifier add 23520e02-f308-40f4-a919-5e03bd775fb2 frenzy1 0.2 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 2 run attribute @s minecraft:generic.attack_damage modifier add 23520e02-f308-40f4-a919-5e03bd775fb2 frenzy1 0.3 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 3 run attribute @s minecraft:generic.attack_damage modifier add 23520e02-f308-40f4-a919-5e03bd775fb2 frenzy1 0.4 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 23520e02-f308-40f4-a919-5e03bd775fb2 frenzy1 0.5 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 1 run attribute @s minecraft:generic.movement_speed modifier add 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d frenzy2 0.2 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 2 run attribute @s minecraft:generic.movement_speed modifier add 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d frenzy2 0.3 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 3 run attribute @s minecraft:generic.movement_speed modifier add 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d frenzy2 0.4 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 4.. run attribute @s minecraft:generic.movement_speed modifier add 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d frenzy2 0.5 multiply_base
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 1 run attribute @s minecraft:generic.armor_toughness modifier add 7fad711d-14d8-4526-9443-a8ff4d8e7d3f frenzy3 2 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 2 run attribute @s minecraft:generic.armor_toughness modifier add 7fad711d-14d8-4526-9443-a8ff4d8e7d3f frenzy3 3 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 3 run attribute @s minecraft:generic.armor_toughness modifier add 7fad711d-14d8-4526-9443-a8ff4d8e7d3f frenzy3 4 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 4.. run attribute @s minecraft:generic.armor_toughness modifier add 7fad711d-14d8-4526-9443-a8ff4d8e7d3f frenzy3 5 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 1 run attribute @s minecraft:generic.attack_speed modifier add 8c2e8910-0cec-4289-898a-3af402afa755 frenzy4 0.1 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 2 run attribute @s minecraft:generic.attack_speed modifier add 8c2e8910-0cec-4289-898a-3af402afa755 frenzy4 0.15 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 3 run attribute @s minecraft:generic.attack_speed modifier add 8c2e8910-0cec-4289-898a-3af402afa755 frenzy4 0.2 add
execute if score temp0 um.dummy matches ..10 if score @s um.frenzy_charms matches 4.. run attribute @s minecraft:generic.attack_speed modifier add 8c2e8910-0cec-4289-898a-3af402afa755 frenzy4 0.25 add