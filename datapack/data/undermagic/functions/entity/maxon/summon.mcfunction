function undermagic:boss/maxon/maxon_end
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.2 500
summon wither_skeleton ~ ~ ~ {Silent:1b,NoAI:1b,DeathLootTable:"undermagic:entities/maxon",PersistenceRequired:1b,CanPickUpLoot:0b,Health:300f,Tags:["um.maxon","um.demon_miniboss","um.entity"],CustomName:'{"text":"Maxon","italic":false}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420155}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420154}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1}]}

data modify storage undermagic:common boss_status.maxon set value 1b
