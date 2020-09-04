
scoreboard players set five um.dummy 5
scoreboard players set 100 um.dummy 100

scoreboard players set $cons.rng_a um.dummy 1103515245
execute store result score $cons.rng_seed um.dummy run data get entity @e[limit=1,sort=random] UUID[0]

scoreboard players set $cons.-1 um.dummy -1
scoreboard players set $cons.16 um.dummy 16


