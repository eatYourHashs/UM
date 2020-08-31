tag @s add um_processed
execute if block ~ ~-1 ~ magma_block run summon minecraft:zombie ~ ~ ~ {Silent:1b,CustomNameVisible:1b,CanPickUpLoot:0b,Health:40f,IsBaby:1b,CanBreakDoors:0b,Tags:["um_entity","um_salamander"],CustomName:'{"text":"Salamander"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420084}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:12b,Amplifier:10b,Duration:200},{Id:14b,Amplifier:10b,Duration:200}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0},{Name:zombie.spawn_reinforcements,Base:0}],DeathLootTable:"undermagic:um_mob/salamander"}
execute if block ~ ~-1 ~ magma_block run tp @s ~ -200 ~
execute store result score @s um.dummy run loot spawn ~ -200 ~ loot undermagic:um_rand/rand1_100
execute if score @s um.dummy matches 100.. run summon minecraft:zombie ~ ~ ~ {Silent:1b,CustomNameVisible:1b,CanPickUpLoot:0b,Health:40f,IsBaby:1b,CanBreakDoors:0b,Tags:["um_entity","um_salamander"],Passengers:[{id:"minecraft:zombified_piglin",IsBaby:1b,Anger:720000,Tags:["um_entity","um_salam_jockey","um_processed"],HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}],CustomName:'{"text":"Salamander"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420084}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:12b,Amplifier:10b,Duration:200},{Id:14b,Amplifier:10b,Duration:200}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if score @s um.dummy matches 100.. run tp @s ~ -200 ~
execute if block ~ ~-1 ~ obsidian if score abyss_spawned um.dummy matches 1 run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"undermagic:um_mob/voidling",Silent:1b,CustomNameVisible:0b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,CanBreakDoors:0b,Tags:["um_entity","um_voidling"],CustomName:'{"text":"Voidling"}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420095}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420095}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420094}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if block ~ ~-1 ~ obsidian if score abyss_spawned um.dummy matches 1 run tp @s ~ -200 ~