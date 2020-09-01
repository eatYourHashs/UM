tag @s add random
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~-2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~-2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~-2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~-2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~ ~ ~-2 {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
summon armor_stand ~-2 ~ ~ {Tags:["global.ignore","um_entity","random"]}
tag @e[sort=random,limit=1,tag=random] add selected
kill @e[tag=random,type=armor_stand]
tag @e[tag=random] remove random
#execute if entity @s[tag=selected] run summon minecraft:zombie ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"undermagic:um_mob/shadebeast",CanPickUpLoot:0b,Health:40f,IsBaby:1b,CanBreakDoors:0b,CustomName:'{"text":"Shadebeast","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420082}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:3},{Name:generic.armor,Base:0},{Name:zombie.spawn_reinforcements,Base:0}],Tags:["global.ignore","um_shadebeast","um_entity"]}
kill @e[tag=random,type=armor_stand]
tag @e[tag=selected] remove selected
tag @s add um_processed
