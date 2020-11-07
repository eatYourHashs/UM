tp @p[distance=..50]
execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_21
scoreboard players remove rand um.dummy 11
scoreboard players operation rand um.dummy /= $cons.2 um.dummy
scoreboard players operation rand um.dummy *= $cons.3 um.dummy
execute store result score x um.dummy run data get entity @s Pos[0] 1
scoreboard players operation x um.dummy += rand um.dummy
execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_21
scoreboard players remove rand um.dummy 1
scoreboard players operation rand um.dummy /= $cons.3 um.dummy
scoreboard players operation rand um.dummy *= $cons.2 um.dummy
execute store result score y um.dummy run data get entity @s Pos[1] 1
scoreboard players operation y um.dummy += rand um.dummy
execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_21
scoreboard players remove rand um.dummy 11
scoreboard players operation rand um.dummy /= $cons.2 um.dummy
scoreboard players operation rand um.dummy *= $cons.3 um.dummy
execute store result score z um.dummy run data get entity @s Pos[2] 1
scoreboard players operation z um.dummy += rand um.dummy
execute store result entity @s Pos[0] double 1 run scoreboard players get x um.dummy
execute store result entity @s Pos[1] double 1 run scoreboard players get y um.dummy
execute store result entity @s Pos[2] double 1 run scoreboard players get z um.dummy