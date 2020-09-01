execute unless entity @e[distance=..2,tag=um_crystal_marker] run summon armor_stand ~ ~ ~ {Invisible:1b,Invincible:1b,Marker:1b,NoGravity:1b,Tags:["global.ignore","um_crystal_marker","um_entity","global.ignore"]}
execute if score difficulty um.dummy matches 1.. positioned ~ ~-33 ~ run function undermagic:entity/wyrmling/spawn
tag @s add um_processed