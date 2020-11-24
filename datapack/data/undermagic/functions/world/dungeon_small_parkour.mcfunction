execute if entity @s[y_rotation=-45..45] run setblock ^-4 ^-5 ^1 structure_block{mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "CLOCKWISE_90", posX: 0, mode: "LOAD", posY: 1, sizeX: 18, posZ: 0, integrity: 1.0f, showair: 0b, x: 3388, name: "undermagic:dungeon_small_parkour", sizeY: 18, sizeZ: 9, showboundingbox: 0b}
execute if entity @s[y_rotation=45..135] run setblock ^-4 ^-5 ^1 structure_block{mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "CLOCKWISE_180", posX: 0, mode: "LOAD", posY: 1, sizeX: 18, posZ: 0, integrity: 1.0f, showair: 0b, x: 3388, name: "undermagic:dungeon_small_parkour", sizeY: 18, sizeZ: 9, showboundingbox: 0b}
execute if entity @s[y_rotation=135..225] run setblock ^-4 ^-5 ^1 structure_block{mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "COUNTERCLOCKWISE_90", posX: 0, mode: "LOAD", posY: 1, sizeX: 18, posZ: 0, integrity: 1.0f, showair: 0b, x: 3388, name: "undermagic:dungeon_small_parkour", sizeY: 18, sizeZ: 9, showboundingbox: 0b}
execute if entity @s[y_rotation=225..315] run setblock ^-4 ^-5 ^1 structure_block{mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 18, posZ: 0, integrity: 1.0f, showair: 0b, x: 3388, name: "undermagic:dungeon_small_parkour", sizeY: 18, sizeZ: 9, showboundingbox: 0b}
setblock ^-4 ^-6 ^1 redstone_block
execute positioned ^ ^8 ^18 run function undermagic:world/dungeon_passage_mark
execute if entity @s[type=armor_stand] run kill @s