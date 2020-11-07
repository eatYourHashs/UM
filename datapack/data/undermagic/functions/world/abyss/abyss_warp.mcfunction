playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 300
execute in minecraft:undermagic/abyss run tp ~ ~ ~
execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 polished_blackstone_bricks
execute at @s run setblock ~ ~-1 ~ polished_blackstone
execute at @s run fill ~1 ~ ~1 ~-1 ~2 ~-1 air
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 300
tag @s add um.abyss_warped
