function undermagic:boss/maxon/maxon_end
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.2 500
summon skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"undermagic:entities/cataclyz",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:300f,Tags:["um.cataclyz","um.entity","um.demon_miniboss"],CustomName:'{"text":"Cataclyz","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420152}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1}]}

data modify storage undermagic:common boss_status.cataclyz set value 1b
