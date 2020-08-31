execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_21
scoreboard players remove rand um.dummy 11
execute store result score x um.dummy run data get entity @s Pos[0] 1
scoreboard players operation x um.dummy += rand um.dummy
execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_21
scoreboard players remove rand um.dummy 11
execute store result score z um.dummy run data get entity @s Pos[2] 1
scoreboard players operation z um.dummy += rand um.dummy
summon armor_stand ~ ~10 ~ {Tags:["global.ignore","um_entity","um_shadesull_basic_bullet","um_new_bullet"],NoGravity:1b,Invisible:1b,Marker:1b}
execute store result entity @e[limit=1,tag=um_new_bullet] Pos[0] double 1 run scoreboard players get x um.dummy
execute store result entity @e[limit=1,tag=um_new_bullet] Pos[2] double 1 run scoreboard players get z um.dummy
tag @e[limit=1,tag=um_new_bullet] remove um_new_bullet