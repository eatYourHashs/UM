playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1 0.7
particle minecraft:smoke ~ ~4 ~ 0 0 0 0.1 500
scoreboard players set alpha_sb_spawn um.dummy 0
summon minecraft:zombie ~ ~4 ~ {CustomNameVisible:0b,DeathLootTable:"undermagic:um_mob/shadebeast_alpha",PersistenceRequired:1b,CanPickUpLoot:0b,Health:100f,IsBaby:0b,CanBreakDoors:0b,Tags:["um_entity","um_shadebeast_alpha"],CustomName:'{"text":"Shadebeast Alpha","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420083}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:11b,Amplifier:5b,Duration:4}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:12},{Name:generic.armor,Base:5},{Name:zombie.spawn_reinforcements,Base:0}]}

data modify storage undermagic:common boss_status.blood_amalgam set value 1b