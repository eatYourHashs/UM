tag @e[tag=selected] remove selected
tag @s add random
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
tag @e[sort=random,limit=1,tag=random] add selected
execute if entity @s[tag=selected] run function undermagic:entity/spawn_lesser/demon
execute unless entity @s[tag=selected] run function undermagic:entity/greater_demon/summon
kill @e[tag=random,type=armor_stand,tag=!um_demon_portal]
tag @e[tag=random] remove random
tag @e[tag=selected] remove selected
