
execute if block ~ ~-0.2 ~ minecraft:obsidian run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_demon_portal"]}
execute if block ~ ~-0.2 ~ minecraft:obsidian run kill @s

tag @s remove um_processed
