particle minecraft:portal ~ ~1 ~ 0.1 0.2 0.1 0.5 50
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 2
execute if block ^ ^ ^14 air run tp @s ^ ^ ^14
execute if block ^ ^ ^14 cave_air run tp @s ^ ^ ^14
execute at @s run particle minecraft:portal ~ ~1 ~ 0.1 0.2 0.1 0.5 50
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
