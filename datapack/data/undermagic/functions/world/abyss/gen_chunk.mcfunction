
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s run fill ~ 128 ~ ~15 128 ~15 barrier
execute at @s run kill @e[type=area_effect_cloud,tag=um.abyss_chunk,distance=..1]

execute at @s positioned ~16 0 ~ unless block ~ 128 ~ minecraft:barrier run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["um.abyss_chunk"],Duration:2000000000}
execute at @s positioned ~-16 0 ~ unless block ~ 128 ~ minecraft:barrier run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["um.abyss_chunk"],Duration:2000000000}
execute at @s positioned ~ 0 ~16 unless block ~ 128 ~ minecraft:barrier run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["um.abyss_chunk"],Duration:2000000000}
execute at @s positioned ~ 0 ~-16 unless block ~ 128 ~ minecraft:barrier run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["um.abyss_chunk"],Duration:2000000000}

execute at @s run function undermagic:world/abyss/chunkgen
