tp @s ~ ~-0.5 ~
scoreboard players set $math.in_0 um.dummy 50
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2] run function undermagic:utils/damage_entity
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run scoreboard players set $math.in_0 um.dummy 50
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run scoreboard players set $math.in_1 um.dummy 0
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run scoreboard players set $math.in_2 um.dummy 0
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air as @e[tag=!global.ignore,distance=..3] run function undermagic:utils/damage_entity
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run kill @s