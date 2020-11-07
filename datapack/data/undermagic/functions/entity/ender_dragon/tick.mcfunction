
execute if score difficulty um.dummy matches 1.. if entity @s[nbt={DragonPhase:8}] facing entity @p feet run tp @s ^ ^ ^0.5

execute if score difficulty um.dummy matches 1.. run scoreboard players add dragon um.dummy 1
execute if score difficulty um.dummy matches 1.. if score dragon um.dummy matches 301.. run scoreboard players set dragon um.dummy 0
execute if score difficulty um.dummy matches 1.. if score dragon um.dummy matches 130 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if score dragon um.dummy matches 50 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if score dragon um.dummy matches 100 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}

execute if score difficulty um.dummy matches 2.. if predicate undermagic:probability/0.01 at @e[sort=random,tag=um.crystal_marker,limit=1] unless entity @e[type=end_crystal,distance=..2] run function undermagic:entity/ender_dragon/respawn_crystal
execute if score difficulty um.dummy matches 2.. if predicate undermagic:probability/0.03 at @r[distance=0..] run function undermagic:entity/wyrmling/spawn
