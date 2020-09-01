playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.5
summon minecraft:skeleton ~3 ~20 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull","um_shadesull_elder_hand","um_hand1"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
summon minecraft:skeleton ~-3 ~20 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull","um_shadesull_elder_hand","um_hand2"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~3 ~30 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull_elder_hand","um_hand3"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~-3 ~30 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull_elder_hand","um_hand4"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~3 ~40 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull_elder_hand","um_hand5"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
execute if score difficulty um.dummy matches 2.. run summon minecraft:skeleton ~-3 ~40 ~ {Silent:1b,NoGravity:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:50f,Tags:["um_entity","um_shadesull","um_shadesull_elder_hand","um_hand6"],CustomName:'{"text":"Elder Hand"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:0}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"minecraft:empty"}
scoreboard players set @e[tag=um_hand1] um.dummy -50
scoreboard players set @e[tag=um_hand3] um.dummy -50
scoreboard players set @e[tag=um_hand5] um.dummy -50
tag @s add um_spawned_hands
