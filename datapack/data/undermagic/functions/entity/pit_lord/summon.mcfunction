
execute if score difficulty um.dummy matches 0 run summon wither_skeleton ~ ~ ~ {NoGravity:1b,Silent:0b,CustomNameVisible:0b,DeathLootTable:"undermagic:um_mob/pit_lord",PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:2f,Tags:["um_entity","um_pit_lord","um_pit_lord_boss","global.ignore.kill"],CustomName:'{"text":"Pit Lord","color":"red"}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420002}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420002}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420020}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0.3},{Name:generic.attack_damage,Base:18},{Name:generic.armor,Base:6},{Name:generic.armor_toughness,Base:4}]}
execute if score difficulty um.dummy matches 1.. run summon wither_skeleton ~ ~ ~ {NoGravity:1b,Silent:0b,CustomNameVisible:0b,DeathLootTable:"undermagic:um_mob/pit_lord_lunatic",PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:2f,Tags:["um_entity","um_pit_lord","um_pit_lord_boss","global.ignore.kill"],CustomName:'{"text":"Pit Lord","color":"red"}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420002}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420002}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420020}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:22},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:8}]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["um_pit_abs","um_pit_lord","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420128}}]}

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"infernal_summons"}}},limit=1]
playsound um:boss_music.pit_lord master @a[distance=..50] ~ ~ ~ 0.5 1 0.5

data modify storage undermagic:common boss_status.pit_lord set value 1b
