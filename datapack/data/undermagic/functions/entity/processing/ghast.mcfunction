tag @s add random
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
tag @e[sort=random,limit=1,tag=random] add selected
kill @e[tag=random,type=armor_stand]
tag @e[tag=random] remove random
execute in minecraft:the_nether unless entity @s[tag=selected] unless entity @e[tag=um_featgen,distance=..150] run function undermagic:entity/rift/summon
execute in minecraft:the_nether if entity @s[tag=selected] unless entity @e[tag=um_featgen,distance=..150] run function undermagic:entity/generic/demon_tower_spawn
execute in minecraft:the_nether unless entity @e[tag=um_featgen,distance=..10] run tp @s ~ ~10 ~
kill @e[tag=random,type=armor_stand]
tag @e[tag=selected] remove selected
tag @s add um_processed
