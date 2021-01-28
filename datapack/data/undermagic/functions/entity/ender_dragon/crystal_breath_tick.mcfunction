effect give @s invisibility 2 1 true
particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0 10
execute as @e[tag=um.crystal_marker] at @s unless entity @e[type=minecraft:end_crystal,distance=..3] run tag @s add um.no_crystal
execute facing entity @e[tag=um.no_crystal,sort=nearest,limit=1] feet run tp ^ ^ ^0.3
execute as @e[tag=um.no_crystal,distance=..2] run function undermagic:entity/ender_dragon/respawn_crystal
execute if entity @e[tag=um.no_crystal,distance=..2] run kill @s
tag @e[tag=um.no_crystal] remove um.no_crystal
