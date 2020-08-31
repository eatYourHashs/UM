playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.2 2
scoreboard players add um.dummy_three 1
execute if entity @p[distance=..2] if score difficulty um.dummy matches 1.. run effect give @p instant_damage 1 4
execute if entity @p[distance=..2] run effect give @p instant_damage 1 3
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.03 3 normal
execute unless block ~ ~ ~ bedrock unless block ~ ~ ~ end_portal_frame unless block ~ ~ ~ void_air run setblock ~ ~ ~ air
execute unless score @s um.dummy_three matches 200.. positioned ^ ^ ^0.25 run function undermagic:elder_ray_cast
