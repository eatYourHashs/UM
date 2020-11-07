execute if score @s um.since_attack matches 40.. if score @s um.combo matches 1.. if score $timer_20 um.dummy matches 2 run scoreboard players remove @s um.combo 1
execute if score @s um.deal_damage matches 1.. if score @s um.combo_charms matches 1 unless score @s um.combo matches 5.. run scoreboard players add @s um.combo 1
execute if score @s um.deal_damage matches 1.. if score @s um.combo_charms matches 2 unless score @s um.combo matches 10.. run scoreboard players add @s um.combo 1
execute if score @s um.deal_damage matches 1.. if score @s um.combo_charms matches 3 unless score @s um.combo matches 15.. run scoreboard players add @s um.combo 1
execute if score @s um.deal_damage matches 1.. if score @s um.combo_charms matches 4.. unless score @s um.combo matches 20.. run scoreboard players add @s um.combo 1
attribute @s minecraft:generic.attack_damage modifier remove a5c5148c-0568-47b8-a648-297e1a08cc0f
attribute @s minecraft:generic.attack_speed modifier remove f20361b0-655a-47be-bf66-d86c5522a37b
execute if score @s um.combo matches 1 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 0.25 add
execute if score @s um.combo matches 1 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.025 add
execute if score @s um.combo matches 2 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 0.5 add
execute if score @s um.combo matches 2 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.05 add
execute if score @s um.combo matches 3 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 0.75 add
execute if score @s um.combo matches 3 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.075 add
execute if score @s um.combo matches 4 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 1 add
execute if score @s um.combo matches 4 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.1 add
execute if score @s um.combo matches 5 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 1.25 add
execute if score @s um.combo matches 5 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.125 add
execute if score @s um.combo matches 6 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 1.5 add
execute if score @s um.combo matches 6 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.15 add
execute if score @s um.combo matches 7 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 1.75 add
execute if score @s um.combo matches 7 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.175 add
execute if score @s um.combo matches 8 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 2 add
execute if score @s um.combo matches 8 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.2 add
execute if score @s um.combo matches 9 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 2.25 add
execute if score @s um.combo matches 9 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.225 add
execute if score @s um.combo matches 10 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 2.5 add
execute if score @s um.combo matches 10 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.25 add
execute if score @s um.combo matches 11 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 2.75 add
execute if score @s um.combo matches 11 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.275 add
execute if score @s um.combo matches 12 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 3 add
execute if score @s um.combo matches 12 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.3 add
execute if score @s um.combo matches 13 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 3.25 add
execute if score @s um.combo matches 13 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.325 add
execute if score @s um.combo matches 14 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 3.5 add
execute if score @s um.combo matches 14 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.35 add
execute if score @s um.combo matches 15 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 3.75 add
execute if score @s um.combo matches 15 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.375 add
execute if score @s um.combo matches 16 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 4 add
execute if score @s um.combo matches 16 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.4 add
execute if score @s um.combo matches 17 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 4.25 add
execute if score @s um.combo matches 17 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.425 add
execute if score @s um.combo matches 18 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 4.5 add
execute if score @s um.combo matches 18 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.45 add
execute if score @s um.combo matches 19 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 4.75 add
execute if score @s um.combo matches 19 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.475 add
execute if score @s um.combo matches 20 run attribute @s minecraft:generic.attack_damage modifier add a5c5148c-0568-47b8-a648-297e1a08cc0f combo 5 add
execute if score @s um.combo matches 20 run attribute @s minecraft:generic.attack_speed modifier add f20361b0-655a-47be-bf66-d86c5522a37b combo 0.5 add
