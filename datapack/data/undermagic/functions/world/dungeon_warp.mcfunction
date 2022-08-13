playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 300
execute in undermagic:dungeon run tp 0 100 0
execute in undermagic:dungeon run fill 0 100 0 0 101 0 air
execute unless block -4 98 -4 structure_block at @s run setblock -4 97 -4 redstone_block
execute unless block -4 98 -4 structure_block at @s run setblock -4 98 -4 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 9, posZ: 0, integrity: 1.0f, showair: 0b, name: "undermagic:dungeon_entrance", sizeY: 6, sizeZ: 9, showboundingbox: 0b}
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 300
tag @s add um.dungeon_warped
