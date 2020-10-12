function undermagic:boss/elder/elder_end
playsound minecraft:entity.enderman.stare hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.5

execute if score difficulty um.dummy matches 1.. run summon minecraft:skeleton ~ ~60 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:400f,Tags:["um_entity","um_elder","um_elder_eye"],CustomName:'{"text":"The Elder"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420076}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:6}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"undermagic:um_mob/elder_lunatic"}
execute if score difficulty um.dummy matches 0 run summon minecraft:skeleton ~ ~60 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:400f,Tags:["um_entity","um_elder","um_elder_eye"],CustomName:'{"text":"The Elder"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420076}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"undermagic:um_mob/elder"}
summon minecraft:skeleton ~3 ~20 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand1"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420078}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
summon minecraft:skeleton ~-3 ~20 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand2"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~3 ~130 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand3"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420078}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~-3 ~130 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand4"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~3 ~160 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand5"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420078}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~-3 ~160 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:100f,Tags:["um_entity","um_elder","um_elder_hand","um_hand6"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}

scoreboard players set @e[tag=um_hand1] um.dummy -201
execute if score difficulty um.dummy matches 1.. run scoreboard players set @e[tag=um_hand1] um.dummy -50
scoreboard players set @e[tag=um_hand3] um.dummy -50
scoreboard players set @e[tag=um_hand5] um.dummy -50
playsound um:boss_music.elder master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
particle minecraft:portal ~ ~ ~ 0 0.5 0 1 500

data modify storage undermagic:common boss_status.elder set value 1b
