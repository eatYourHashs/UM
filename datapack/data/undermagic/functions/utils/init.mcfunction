
# Define Constants
scoreboard players set five um.dummy 5
scoreboard players set 100 um.dummy 100

scoreboard players set $cons.rng_a um.dummy 1103515245
execute store result score $cons.rng_seed um.dummy run data get entity @e[limit=1,sort=random] UUID[0]

scoreboard players set $cons.-100 um.dummy -100
scoreboard players set $cons.-25 um.dummy -25
scoreboard players set $cons.-10 um.dummy -10
scoreboard players set $cons.-5 um.dummy -5
scoreboard players set $cons.-3 um.dummy -3
scoreboard players set $cons.-2 um.dummy -1
scoreboard players set $cons.-1 um.dummy -1
scoreboard players set $cons.2 um.dummy 2
scoreboard players set $cons.3 um.dummy 3
scoreboard players set $cons.4 um.dummy 4
scoreboard players set $cons.5 um.dummy 5
scoreboard players set $cons.10 um.dummy 10
scoreboard players set $cons.16 um.dummy 16
scoreboard players set $cons.25 um.dummy 25
scoreboard players set $cons.100 um.dummy 100

# Init Static Region
execute in minecraft:overworld run forceload add -29999999 1600
execute in minecraft:overworld run setblock -29999998 0 1601 minecraft:black_shulker_box
execute in minecraft:overworld run setblock -29999998 0 1602 minecraft:oak_wall_sign[facing=south]
execute in minecraft:overworld run fill -29999998 1 1600 -29999998 1 1615 minecraft:bedrock
