function undermagic:boss/rahthor/rahthor_end
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.2 500
summon wither_skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"undermagic:entities/rahthor",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:300f,Tags:["um.rahthor","um.entity","um.demon_miniboss"],CustomName:'{"text":"Rahthor","italic":false}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420157}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420156}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1}]}

data modify storage undermagic:common boss_status.rahthor set value 1b