execute if score @s um.health matches ..10 run scoreboard players add @s um.lastst_time 1
execute if score @s um.health matches ..10 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 0.5
execute unless score @s um.health matches 11.. unless score @s um.lastst_count matches 10.. run scoreboard players set @s um.lastst_cd 0
execute if score @s um.health matches 11.. run scoreboard players add @s um.lastst_cd 1
execute if score @s um.lastst_count matches 10.. run scoreboard players add @s um.lastst_cd 1
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 run effect give @s regeneration 1 3
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.2 10
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 if score @s um.lastst_charms matches 1 run attribute @s minecraft:generic.armor_toughness modifier add b1398615-1bee-4175-9ffb-99d3c58347df last_stand_tough 0.1 multiply
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 if score @s um.lastst_charms matches 2 run attribute @s minecraft:generic.armor_toughness modifier add b1398615-1bee-4175-9ffb-99d3c58347df last_stand_tough 0.2 multiply
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 if score @s um.lastst_charms matches 3 run attribute @s minecraft:generic.armor_toughness modifier add b1398615-1bee-4175-9ffb-99d3c58347df last_stand_tough 0.3 multiply
execute unless score @s um.lastst_count matches 10.. if score @s um.health matches ..10 if score @s um.lastst_charms matches 4.. run attribute @s minecraft:generic.armor_toughness modifier add b1398615-1bee-4175-9ffb-99d3c58347df last_stand_tough 0.4 multiply
execute unless score @s um.lastst_count matches ..9 run attribute @s minecraft:generic.armor_toughness modifier remove b1398615-1bee-4175-9ffb-99d3c58347df
execute if score @s um.health matches 11.. run attribute @s minecraft:generic.armor_toughness modifier remove b1398615-1bee-4175-9ffb-99d3c58347df
execute if score @s um.lastst_charms matches 1 if score @s um.lastst_time matches 3.. run scoreboard players add @s um.lastst_count 1
execute if score @s um.lastst_charms matches 1 if score @s um.lastst_time matches 3.. run scoreboard players set @s um.lastst_time 0
execute if score @s um.lastst_charms matches 2 if score @s um.lastst_time matches 4.. run scoreboard players add @s um.lastst_count 1
execute if score @s um.lastst_charms matches 2 if score @s um.lastst_time matches 4.. run scoreboard players set @s um.lastst_time 0
execute if score @s um.lastst_charms matches 3 if score @s um.lastst_time matches 5.. run scoreboard players add @s um.lastst_count 1
execute if score @s um.lastst_charms matches 3 if score @s um.lastst_time matches 5.. run scoreboard players set @s um.lastst_time 0
execute if score @s um.lastst_charms matches 4.. if score @s um.lastst_time matches 6.. run scoreboard players add @s um.lastst_count 1
execute if score @s um.lastst_charms matches 4.. if score @s um.lastst_time matches 6.. run scoreboard players set @s um.lastst_time 0
execute if score @s um.lastst_cd matches 600.. run scoreboard players set @s um.lastst_count 0
execute if score @s um.lastst_count matches 0 run attribute @s minecraft:generic.max_health modifier remove 51f77a2b-3e33-4577-a01f-7db31911a934
execute if score @s um.lastst_count matches 1 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -1 add
execute if score @s um.lastst_count matches 2 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -2 add
execute if score @s um.lastst_count matches 3 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -3 add
execute if score @s um.lastst_count matches 4 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -4 add
execute if score @s um.lastst_count matches 5 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -5 add
execute if score @s um.lastst_count matches 6 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -6 add
execute if score @s um.lastst_count matches 7 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -7 add
execute if score @s um.lastst_count matches 8 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -8 add
execute if score @s um.lastst_count matches 9 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -9 add
execute if score @s um.lastst_count matches 10 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -10 add
execute if score @s um.lastst_count matches 11 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -11 add
execute if score @s um.lastst_count matches 12 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -12 add
execute if score @s um.lastst_count matches 13 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -13 add
execute if score @s um.lastst_count matches 14 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -14 add
execute if score @s um.lastst_count matches 15 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -15 add
execute if score @s um.lastst_count matches 16 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -16 add
execute if score @s um.lastst_count matches 17 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -17 add
execute if score @s um.lastst_count matches 18 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -18 add
execute if score @s um.lastst_count matches 19 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -19 add
execute if score @s um.lastst_count matches 20 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -20 add
execute if score @s um.lastst_count matches 21 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -21 add
execute if score @s um.lastst_count matches 22 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -22 add
execute if score @s um.lastst_count matches 23 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -23 add
execute if score @s um.lastst_count matches 24 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -24 add
execute if score @s um.lastst_count matches 25 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -25 add
execute if score @s um.lastst_count matches 26 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -26 add
execute if score @s um.lastst_count matches 27 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -27 add
execute if score @s um.lastst_count matches 28 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -28 add
execute if score @s um.lastst_count matches 29 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -29 add
execute if score @s um.lastst_count matches 30 run attribute @s minecraft:generic.max_health modifier add 51f77a2b-3e33-4577-a01f-7db31911a934 last_stand_hp -30 add