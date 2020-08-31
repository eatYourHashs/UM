tp @s ~ ~-0.5 ~
effect give @e[distance=..2,tag=!um_undead] instant_damage 1 0 true
effect give @e[distance=..2,tag=um_undead] instant_health 1 0 true
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air positioned ~ ~ ~ run effect give @e[distance=..3,tag=!um_undead] instant_damage 1 0 true
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air positioned ~ ~ ~ run effect give @e[distance=..3,tag=um_undead] instant_health 1 0 true
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ cave_air run kill @s