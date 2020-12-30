execute if score @s um.sprint matches 1.. run scoreboard players add @s um.sprint_count 1
execute if score @s um.sprint matches 1.. run scoreboard players set @s um.sprint_cd 3
execute if score @s um.sprint matches 0 run scoreboard players remove @s um.sprint_cd 1
execute if score @s um.sprint matches 0 if score @s um.sprint_cd matches ..0 run scoreboard players set @s um.sprint_count 0
execute if score @s um.sprint_charms matches 1 if score @s um.sprint_count matches 61.. run scoreboard players set @s um.sprint_count 60
execute if score @s um.sprint_charms matches 2 if score @s um.sprint_count matches 121.. run scoreboard players set @s um.sprint_count 120
execute if score @s um.sprint_charms matches 3 if score @s um.sprint_count matches 181.. run scoreboard players set @s um.sprint_count 180
execute if score @s um.sprint_charms matches 4.. if score @s um.sprint_count matches 241.. run scoreboard players set @s um.sprint_count 240
attribute @s minecraft:generic.movement_speed modifier remove 5dba9716-e66d-4984-859b-c9903aae7841
execute if score @s um.sprint_count matches 20..39 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.1 multiply_base
execute if score @s um.sprint_count matches 40..59 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.2 multiply_base
execute if score @s um.sprint_count matches 60..79 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.3 multiply_base
execute if score @s um.sprint_count matches 80..99 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.4 multiply_base
execute if score @s um.sprint_count matches 100..119 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.5 multiply_base
execute if score @s um.sprint_count matches 120..139 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.6 multiply_base
execute if score @s um.sprint_count matches 140..159 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.7 multiply_base
execute if score @s um.sprint_count matches 160..179 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.8 multiply_base
execute if score @s um.sprint_count matches 180..199 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 0.9 multiply_base
execute if score @s um.sprint_count matches 200..219 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 1 multiply_base
execute if score @s um.sprint_count matches 220..239 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 1.1 multiply_base
execute if score @s um.sprint_count matches 240 run attribute @s minecraft:generic.movement_speed modifier add 5dba9716-e66d-4984-859b-c9903aae7841 sprint 1.2 multiply_base