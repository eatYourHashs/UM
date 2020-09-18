scoreboard players add temp um.dummy 1
execute if entity @p[distance=..2] run effect give @p instant_damage 1 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless score temp um.dummy matches 60.. positioned ^ ^ ^0.5 run function undermagic:entity/elder/elder_ray_cast
