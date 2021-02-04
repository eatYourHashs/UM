
execute if entity @s[nbt={ShowBottom:1b}] unless entity @e[distance=..2,tag=um.crystal_marker] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["global.ignore","um.crystal_marker","um.entity"]}
execute if entity @s[nbt={ShowBottom:1b}] if score difficulty um.dummy matches 1.. positioned ~ ~-33 ~ run function undermagic:entity/wyrmling/spawn
