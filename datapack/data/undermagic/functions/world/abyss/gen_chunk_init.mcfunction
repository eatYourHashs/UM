
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["um.abyss_chunk","um.abyss_init"],Duration:2000000000}
execute as @e[type=area_effect_cloud,tag=um.abyss_init,tag=um.abyss_chunk] at @s store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[type=area_effect_cloud,tag=um.abyss_init,tag=um.abyss_chunk] at @s store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
tag @e[type=area_effect_cloud,tag=um.abyss_init] remove um.abyss_init
