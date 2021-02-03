scoreboard players add @s um.dummy 1
scoreboard players add @s um.music 1
execute unless score nohit um.dummy matches 1.. run tag @s add um.no_nohit
execute if score @s um.dummy matches ..99 run particle flame ~ ~1 ~ 0.2 0.3 0.2 0.1 6
execute if score @s um.dummy matches ..30 run tp ~ ~0.13 ~
execute if score @s um.dummy matches ..99 run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches ..99 run effect give @s resistance 1 4 true
execute if score @s um.dummy matches ..99 run tag @s add um.untargetable
execute if score @s um.dummy matches ..99 run effect give @s instant_damage 1 0 true
execute if score @s um.dummy matches 100 run tag @s remove um.untargetable
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 0.5
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.trident.riptide_2 hostile @a ~ ~ ~ 1 0.6
particle flame ~ ~1 ~ 0.2 0.3 0.2 0 2
execute if score @s um.dummy matches 100.. unless score @s um.dummy matches 320..400 facing entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] feet if block ^ ^ ^2 #undermagic:passable run tp ^ ^ ^0.2
execute if score difficulty um.dummy matches 1.. unless score @s um.dummy matches 320..400 facing entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] feet if block ^ ^ ^2 #undermagic:passable run tp ^ ^ ^0.3
execute if score @s um.dummy matches 100.. if score @s um.boss_hp matches ..200 unless score @s um.dummy matches 320..400 facing entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] feet if block ^ ^ ^2 #undermagic:passable run tp ^ ^ ^0.2
execute if score @s um.dummy matches 100.. if score @s um.dummy matches 320..340 if block ~ ~1 ~ #undermagic:passable run tp ~ ~0.2 ~
execute if score @s um.dummy matches 100.. run scoreboard players set @a[distance=40..50,scores={um.flame_grasp=..0},gamemode=!creative,gamemode=!spectator] um.flame_grasp 40
execute if score difficulty um.dummy matches 1.. if score @s um.dummy matches 100.. run scoreboard players set @a[distance=30..50,scores={um.flame_grasp=..0},gamemode=!creative,gamemode=!spectator] um.flame_grasp 20
execute if score difficulty um.dummy matches 1.. if score @s um.dummy matches 125 run scoreboard players set @s um.dummy 170
execute if score @s um.dummy matches 200..220 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 221..230 run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 221..230 if score @s um.boss_hp matches ..200 at @p[distance=..8,gamemode=!creative,gamemode=!spectator] run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 fire keep
execute if score @s um.dummy matches 220 if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 200.. facing entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/pit_lord/pit_lord_fireshot
execute if score @s um.dummy matches 224 if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 200.. facing entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/pit_lord/pit_lord_fireshot
execute if score @s um.dummy matches 228 if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 200.. facing entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/pit_lord/pit_lord_fireshot
execute if score @s um.dummy matches 232 if score difficulty um.dummy matches 2.. if score @s um.boss_hp matches 200.. facing entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/pit_lord/pit_lord_fireshot
execute if score difficulty um.dummy matches 1.. if score @s um.dummy matches 235 run scoreboard players set @s um.dummy 300
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 310 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 320 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 330 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 340 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score @s um.dummy matches 350 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 360 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score @s um.dummy matches 370 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 380 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score @s um.dummy matches 390 at @p[distance=12..50,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Pit Lord","color":"red","italic":false}'}
execute if score difficulty um.dummy matches 2.. if score @s um.boss_hp matches ..200 if entity @e[tag=um.pit_minion] run effect give @s resistance 2 4
execute if score difficulty um.dummy matches 2.. if score @s um.boss_hp matches ..200 if entity @e[tag=um.pit_minion] run tag @s add um.untargetable
execute if score difficulty um.dummy matches 2.. if score @s um.boss_hp matches ..200 unless entity @e[tag=um.pit_minion] run tag @s remove um.untargetable
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 2
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 unless entity @s[tag=um.absorp_1] run effect give @s absorption 10 7 true
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 unless entity @s[tag=um.absorp_1] run tag @s add um.absorp_1
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..150 unless entity @s[tag=um.absorp_2] run effect give @s absorption 10 7 true
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..150 unless entity @s[tag=um.absorp_2] run tag @s add um.absorp_2
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..100 unless entity @s[tag=um.absorp_3] run effect give @s absorption 10 7 true
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..100 unless entity @s[tag=um.absorp_3] run tag @s add um.absorp_3
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..50 unless entity @s[tag=um.absorp_4] run effect give @s absorption 10 7 true
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..50 unless entity @s[tag=um.absorp_4] run tag @s add um.absorp_4
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..20 unless entity @s[tag=um.absorp_5] run effect give @s absorption 10 7 true
execute if score difficulty um.dummy matches ..1 if score @s um.dummy matches 400 if score @s um.boss_hp matches ..20 unless entity @s[tag=um.absorp_5] run tag @s add um.absorp_5
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 unless entity @s[tag=um.spawned_mins1] run summon wither_skeleton ~2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 unless entity @s[tag=um.spawned_mins1] run summon wither_skeleton ~-2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..200 unless entity @s[tag=um.spawned_mins1] run tag @s add um.spawned_mins1
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..150 unless entity @s[tag=um.spawned_mins3] run summon wither_skeleton ~2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..150 unless entity @s[tag=um.spawned_mins3] run summon wither_skeleton ~-2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..150 unless entity @s[tag=um.spawned_mins3] run tag @s add um.spawned_mins3
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..100 unless entity @s[tag=um.spawned_mins2] run summon wither_skeleton ~2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..100 unless entity @s[tag=um.spawned_mins2] run summon wither_skeleton ~-2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..100 unless entity @s[tag=um.spawned_mins2] run tag @s add um.spawned_mins2
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..50 unless entity @s[tag=um.spawned_mins4] run summon wither_skeleton ~2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..50 unless entity @s[tag=um.spawned_mins4] run summon wither_skeleton ~-2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:6}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..50 unless entity @s[tag=um.spawned_mins4] run tag @s add um.spawned_mins4
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..20 unless entity @s[tag=um.spawned_mins5] run summon wither_skeleton ~2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..20 unless entity @s[tag=um.spawned_mins5] run summon wither_skeleton ~-2 ~ ~ {DeathLootTable:"undermagic:entities/greater_demon",NoGravity:0b,Silent:0b,CustomNameVisible:0b,NoAI:0b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.greater_demon","um.pit_minion","um.pit_lord"],CustomName:'{"text":"Pit Minion"}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:420003,Unbreakable:0b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420002,Unbreakable:1b}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420001,Unbreakable:1b}}],ArmorDropChances:[0.1F,0.1F,0.1F,-327.67F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 400 if score @s um.boss_hp matches ..20 unless entity @s[tag=um.spawned_mins5] run tag @s add um.spawned_mins5
execute if score @s um.dummy matches 401.. run scoreboard players set @s um.dummy 101

bossbar set undermagic:pit_lord players @a[distance=..50]
bossbar set undermagic:pit_lord visible true
execute if entity @s[nbt={AbsorptionAmount:0f}] unless entity @e[tag=um.pit_minion] run bossbar set undermagic:pit_lord color red
execute unless entity @s[nbt={AbsorptionAmount:0f}] run bossbar set undermagic:pit_lord color yellow
execute if entity @e[tag=um.pit_minion] run bossbar set undermagic:pit_lord color yellow
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:pit_lord value run data get entity @s Health 1

execute if score @s um.music matches 1460 run playsound um:music.pit_lord music @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 1460.. run scoreboard players set @s um.music 0
effect give @s invisibility 2 1 true
tp @e[sort=nearest,limit=1,tag=um.pit_abs] @s
