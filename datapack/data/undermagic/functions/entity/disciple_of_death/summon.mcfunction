
summon skeleton ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"undermagic:entities/disciple_of_death",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:300f,Tags:["um.entity","um.disciple_of_death","global.ignore.kill"],CustomName:'{"text":"Disciple of Death"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420130}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.knockback_resistance,Base:5},{Name:generic.armor,Base:8}]}
data modify storage undermagic:common boss_status.disciple_of_death set value 1b

execute if entity @s[type=armor_stand] run kill @s