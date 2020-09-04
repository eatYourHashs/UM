
execute unless block ~ 128 ~ minecraft:barrier run function undermagic:world/abyss/gen_chunk_init
execute positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=um.abyss_chunk,sort=nearest,limit=1] at @s run function undermagic:world/abyss/gen_chunk
