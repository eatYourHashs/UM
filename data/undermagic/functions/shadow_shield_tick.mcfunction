execute unless entity @e[tag=um_shadow_guardian,distance=..10] run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 2
execute unless entity @e[tag=um_shadow_guardian,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_shadow_guardian"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420072}}]}
execute unless entity @e[tag=um_guardian_target,distance=..10] run tp @e[tag=um_shadow_guardian,distance=..10,sort=nearest,limit=1] @s
execute if entity @e[tag=um_shadow_guardian,distance=..3] run effect give @s resistance 1 0 true
tag @s remove um_guardian_target