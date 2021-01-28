function undermagic:boss/shadesull/shadesull_end
scoreboard players add @s um.dummy 1
scoreboard players add @s um.music 1
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
particle minecraft:smoke ~ ~3 ~ 0.2 0.5 0.2 0.05 200
summon minecraft:skeleton ~ ~2 ~ {Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:400f,Tags:["um.entity","um.shadesull","um.shadesull_boss","um.shadesull_p2"],CustomName:'{"text":"Shadesull"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420132}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:800},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:10}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],DeathLootTable:"undermagic:entities/shadesull"}
playsound um:music.shadesull_p2 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
scoreboard players set @e[tag=um.shadesull_boss,limit=1,sort=nearest] um.dummy 800

data modify storage undermagic:common boss_status.shadesull set value 1b
