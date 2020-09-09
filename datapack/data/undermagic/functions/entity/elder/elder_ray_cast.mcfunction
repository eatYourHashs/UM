playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.2 2
scoreboard players add um.dummy_three 1
execute if entity @p[distance=..2] if score difficulty um.dummy matches 2.. run effect give @p instant_damage 1 4
execute if entity @p[distance=..2] run effect give @p instant_damage 1 3
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.03 2 normal
execute unless score @s um.dummy_three matches 100.. positioned ^ ^ ^0.5 run function undermagic:entity/elder/elder_ray_cast
