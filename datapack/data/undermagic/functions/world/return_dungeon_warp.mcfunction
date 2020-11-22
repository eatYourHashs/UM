playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 300
execute in minecraft:the_end run tp 700 250 0
execute in minecraft:the_end run setblock 700 250 0 end_portal
tag @s add um.dungeon_warped
