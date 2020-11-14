scoreboard players add @s um.count_count 1
execute unless block ^ ^ ^0.6 air unless block ^ ^ ^1.2 cave_air run scoreboard players set @s um.count_count 0
execute if score @s um.count_count matches 1..10 run tp @s ^ ^ ^1.2
execute if score @s um.count_count matches 10 run effect give @s resistance 1 4
execute if score @s um.count_count matches 10 run scoreboard players set @s um.count_count 0
execute if score @s um.resist matches 1.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 0.6
execute if score @s um.resist matches 1.. run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.2 30
execute if score @s um.resist matches 1.. run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 0.5
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 1 run scoreboard players set @s um.count_cd 20
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 2 run scoreboard players set @s um.count_cd 16
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 3 run scoreboard players set @s um.count_cd 12
execute if score @s um.resist matches 1.. if score @s um.count_charms matches 4 run scoreboard players set @s um.count_cd 8
execute if score @s um.resist matches 1.. run effect clear @s resistance