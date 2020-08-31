tag @s add random
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~-2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~-2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
tag @e[sort=random,limit=1,tag=random] add selected
kill @e[tag=random,type=armor_stand]
tag @e[tag=random] remove random
##execute if entity @s[tag=selected] run function undermagic:demon_spawn_processing
kill @e[tag=random,type=armor_stand]
tag @e[tag=selected] remove selected
tag @s add um_processed
