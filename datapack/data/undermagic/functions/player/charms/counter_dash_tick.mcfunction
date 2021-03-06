scoreboard players add @s um.count_count 1
particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.05 3
execute unless block ^ ^ ^0.6 air unless block ^ ^ ^0.6 cave_air run scoreboard players set @s um.count_count 0
execute unless block ^ ^ ^0.6 air unless block ^ ^ ^0.6 cave_air run effect clear @s resistance
execute unless block ^ ^ ^0.6 air unless block ^ ^ ^0.6 cave_air run effect clear @s levitation
execute if score @s um.count_count matches 1..10 run tp @s ^ ^ ^0.6
execute if score @s um.count_count matches 10 run effect clear @s resistance
execute if score @s um.count_count matches 10 run effect clear @s levitation
execute if score @s um.count_count matches 10 run scoreboard players set @s um.count_count 0
execute if score @s um.resist matches 1.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 0.6
execute if score @s um.resist matches 1.. run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.2 30
execute if score @s um.resist matches 1.. run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 0.5
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 1 run scoreboard players set @s um.count_cd 20
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 2 run scoreboard players set @s um.count_cd 16
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 3 run scoreboard players set @s um.count_cd 12
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 4 run scoreboard players set @s um.count_cd 8
execute if score @s um.resist matches 1.. run effect give @s resistance 1 4 true