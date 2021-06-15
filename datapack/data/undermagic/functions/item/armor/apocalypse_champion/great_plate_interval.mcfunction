particle minecraft:flame ~ ~1 ~ 0.4 0.5 0.4 0 5
scoreboard players add @s um.ward_cd 1
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. run particle minecraft:dust_color_transition 1 0.6 0 0.9 1 0 0 ~ ~1 ~ 0.4 0.5 0.4 1 50
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. unless score @s um.champ_chg matches 1.. run scoreboard players add @s um.ent_ward 60
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. if score @s um.champ_chg matches 1 run scoreboard players add @s um.ent_ward 70
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. if score @s um.champ_chg matches 2 run scoreboard players add @s um.ent_ward 80
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. if score @s um.champ_chg matches 3 run scoreboard players add @s um.ent_ward 90
execute if score @s um.ward_cd matches 10.. unless score @s um.ent_ward matches 600.. if score @s um.champ_chg matches 4 run scoreboard players add @s um.ent_ward 100
execute if score @s um.ward_cd matches 10.. unless score @s um.champ_chg matches 4.. run scoreboard players add @s um.champ_chg 1
execute if score @s um.ward_cd matches 10.. run scoreboard players set @s um.ward_cd 0
execute if score @s um.ent_ward matches 601.. run scoreboard players set @s um.ent_ward 600
execute if score @s um.dis_cd matches 1.. run scoreboard players remove @s um.dis_cd 1
