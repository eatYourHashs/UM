execute if score spire_height um.dummy matches 1 store result score spiretop_rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score spire_height um.dummy matches 1 if score spiretop_rand um.dummy matches 1..10 run setblock ~7 ~11 ~7 netherite_block
execute if score spire_height um.dummy matches 1 if score spiretop_rand um.dummy matches 11..100 run setblock ~7 ~11 ~7 diamond_block
execute if score spire_height um.dummy matches 1 run fill ~5 ~ ~5 ~9 ~10 ~9 polished_blackstone_bricks
execute if score spire_height um.dummy matches 1 run fill ~6 ~1 ~6 ~8 ~9 ~8 air
execute if score spire_height um.dummy matches 2 run fill ~4 ~ ~4 ~10 ~10 ~10 polished_blackstone_bricks
execute if score spire_height um.dummy matches 2 run fill ~5 ~1 ~5 ~9 ~9 ~9 air
execute if score spire_height um.dummy matches 3 run fill ~3 ~ ~3 ~11 ~10 ~11 polished_blackstone_bricks
execute if score spire_height um.dummy matches 3 run fill ~4 ~1 ~4 ~10 ~9 ~10 air
execute if score spire_height um.dummy matches 4 run fill ~2 ~ ~2 ~12 ~10 ~12 polished_blackstone_bricks
execute if score spire_height um.dummy matches 4 run fill ~3 ~1 ~3 ~11 ~9 ~11 air
execute if score spire_height um.dummy matches 5 run fill ~1 ~ ~1 ~13 ~10 ~13 polished_blackstone_bricks
execute if score spire_height um.dummy matches 5 run fill ~2 ~1 ~2 ~12 ~9 ~12 air
execute if score spire_height um.dummy matches 6 run fill ~ ~ ~ ~14 ~10 ~14 polished_blackstone_bricks
execute if score spire_height um.dummy matches 6 run fill ~1 ~1 ~1 ~13 ~9 ~13 air
summon zombie ~8 ~1 ~7 {Silent:1b,DeathLootTable:"undermagic:um_mob/revenant",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,Tags:["um_entity","um_abyssal_revenant"],CustomName:'{"text":"Abyssal Revenant"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420123}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:4},{Name:zombie.spawn_reinforcements,Base:0}]}
execute store result score spawn_rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score spawn_rand um.dummy matches 1..33 run summon zombie ~6 ~1 ~7 {Silent:1b,DeathLootTable:"undermagic:um_mob/revenant",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,Tags:["um_entity","um_abyssal_revenant"],CustomName:'{"text":"Abyssal Revenant"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420123}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:4},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if score spawn_rand um.dummy matches 34..66 run setblock ~6 ~1 ~7 chest{LootTable:"undermagic:abyssal_spire"} replace
execute if score spawn_rand um.dummy matches 67..99 run function undermagic:entity/voidling/summon
scoreboard players remove spire_height um.dummy 1
execute if score spire_height um.dummy matches 1.. positioned ~ ~10 ~ run function undermagic:world/abyss/spire_step
