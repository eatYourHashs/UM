
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0.5
summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_blood_boss","um_blood_amalgam"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420045}}]}
scoreboard players set @e[tag=um_blood_boss] um.boss_hp 12
summon minecraft:husk ~2 ~1 ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um_entity","um_blood_minion","um_blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:7},{Name:zombie.spawn_reinforcements,Base:0}]}
summon minecraft:husk ~-2 ~1 ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um_entity","um_blood_minion","um_blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:7},{Name:zombie.spawn_reinforcements,Base:0}]}
summon minecraft:husk ~ ~1 ~2 {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um_entity","um_blood_minion","um_blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:7},{Name:zombie.spawn_reinforcements,Base:0}]}
summon minecraft:husk ~ ~1 ~-2 {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um_entity","um_blood_minion","um_blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:7},{Name:zombie.spawn_reinforcements,Base:0}]}
playsound um:boss_music.blood_amalgam master @a[distance=..50] ~ ~ ~ 0.5 1 0.5

data modify storage undermagic:common boss_status.blood_amalgam set value 1b
