
execute if entity @s[nbt={ShowBottom:1b}] unless entity @e[distance=..2,tag=um_crystal_marker] run summon item_frame ~ ~ ~ {Invisible:1b,Invincible:1b,Invulnerable:1b,Tags:["global.ignore","um_crystal_marker","um_entity"]}
execute if entity @s[nbt={ShowBottom:1b}] if score difficulty um.dummy matches 1.. positioned ~ ~-33 ~ run function undermagic:entity/wyrmling/spawn
