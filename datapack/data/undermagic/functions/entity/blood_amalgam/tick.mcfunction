scoreboard players add @s um.dummy 1
scoreboard players add @s um.music 1
particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0 0 0 0 1
execute if score difficulty um.dummy matches 0 facing entity @p[distance=5..64,gamemode=!creative,gamemode=!spectator] feet facing ^ ^-0.2 ^-1 run tp ^ ^ ^-0.08
execute if entity @s[scores={um.boss_hp=4..}] if score difficulty um.dummy matches 1.. facing entity @p[distance=5..64,gamemode=!creative,gamemode=!spectator] feet facing ^ ^-0.2 ^-1 run tp ^ ^ ^-0.08
execute unless entity @s[scores={um.dummy=250..270,um.boss_hp=..6}] facing entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] feet facing ^ ^ ^-1 run tp ^ ^ ^0.08
execute if entity @s[scores={um.dummy=301..,um.boss_hp=8..}] run scoreboard players set @s um.dummy 1
execute if entity @s[scores={um.dummy=501..,um.boss_hp=4..7}] run scoreboard players set @s um.dummy 1
execute if entity @s[scores={um.dummy=501..,um.boss_hp=2}] if score difficulty um.dummy matches 0 run scoreboard players set @s um.dummy 170
execute if entity @s[scores={um.dummy=21,um.boss_hp=2}] if score difficulty um.dummy matches 1 run scoreboard players set @s um.dummy 0
execute if entity @s[scores={um.dummy=16,um.boss_hp=2}] if score difficulty um.dummy matches 2.. run scoreboard players set @s um.dummy 0
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 120
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 150
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 180
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=100}] at @p[distance=5..64,gamemode=!creative,gamemode=!spectator] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.blood_laser_target","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=100}] run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^0.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] at @e[sort=nearest,limit=1,tag=um.blood_laser_target] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] run kill @e[tag=um.blood_laser_target]
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=105}] at @p[distance=5..64,gamemode=!creative,gamemode=!spectator] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.blood_laser_target","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^0.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] at @e[sort=nearest,limit=1,tag=um.blood_laser_target] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] run kill @e[tag=um.blood_laser_target]
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=110}] at @p[distance=5..64,gamemode=!creative,gamemode=!spectator] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.blood_laser_target","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^0.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^1.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^2.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^3.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^4.5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] positioned ~ ~1 ~ facing entity @e[sort=nearest,limit=1,tag=um.blood_laser_target] feet run particle minecraft:dust 1 0 0 1 ^ ^ ^5 0 0 0 0 1
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] at @e[sort=nearest,limit=1,tag=um.blood_laser_target] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] run kill @e[tag=um.blood_laser_target]
execute if entity @s[scores={um.boss_hp=4..10,um.dummy=115}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2
execute if score difficulty um.dummy matches 1.. if score @s um.dummy matches 120 run scoreboard players set @s um.dummy 170
execute store success score @s um.dummy_two if entity @e[tag=um.blood_minion]
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 150
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 200
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 250
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute if entity @s[scores={um.boss_hp=..8,um.dummy=180}] if score difficulty um.dummy matches 0 unless score @s um.dummy_two matches 8.. run summon minecraft:husk ~ ~1 ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.blood_minion","um.blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:9},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if entity @s[scores={um.boss_hp=4..8,um.dummy=180}] if score difficulty um.dummy matches 1.. unless score @s um.dummy_two matches 10.. run summon minecraft:husk ~ ~1 ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.blood_minion","um.blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:9},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if entity @s[scores={um.boss_hp=4..8,um.dummy=180}] if score difficulty um.dummy matches 1.. unless score @s um.dummy_two matches 10.. run summon minecraft:husk ~ ~1 ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,Tags:["um.entity","um.blood_minion","um.blood_amalgam"],CustomName:'{"text":"Blood Nodule"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420046}}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:9},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if entity @s[scores={um.boss_hp=..8,um.dummy=180}] run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={um.boss_hp=..6,um.dummy=250}] if score difficulty um.dummy matches 0 facing entity @p[distance=5..64,gamemode=!spectator] feet run summon minecraft:armor_stand ^ ^ ^64 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.ba_dash","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=4..6,um.dummy=250}] if score difficulty um.dummy matches 1.. facing entity @p[distance=5..64,gamemode=!spectator] feet run summon minecraft:armor_stand ^ ^ ^64 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.ba_dash","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=..6,um.dummy=250}] if score difficulty um.dummy matches 0 run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1 0.7
execute if entity @s[scores={um.boss_hp=4..6,um.dummy=250}] if score difficulty um.dummy matches 1.. run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1 0.7
execute if entity @s[scores={um.boss_hp=..6,um.dummy=250..270}] facing entity @e[sort=nearest,tag=um.ba_dash] feet facing ^ ^ ^-1 run tp ^ ^ ^-0.2
execute if entity @s[scores={um.boss_hp=..6,um.dummy=250..270}] if score difficulty um.dummy matches 1.. facing entity @e[sort=nearest,tag=um.ba_dash] feet facing ^ ^ ^-1 run tp ^ ^ ^-0.2
execute if entity @s[scores={um.boss_hp=..6,um.dummy=250..270}] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.boss_hp=..6,um.dummy=271}] run kill @e[tag=um.ba_dash]
execute if score difficulty um.dummy matches 1.. if score @s um.dummy matches 280 run scoreboard players set @s um.dummy 320
execute if entity @s[scores={um.boss_hp=..6,um.dummy=330}] run playsound minecraft:entity.ghast.warn hostile @a ~ ~ ~ 2 2
execute if entity @s[scores={um.boss_hp=..6,um.dummy=350}] if score difficulty um.dummy matches 0 facing entity @p feet run function undermagic:entity/blood_amalgam/blood_amalgam_shotgun
execute if entity @s[scores={um.boss_hp=6,um.dummy=350}] if score difficulty um.dummy matches 1.. facing entity @p feet run function undermagic:entity/blood_amalgam/blood_amalgam_shotgun
execute if entity @s[scores={um.boss_hp=..2,um.dummy=1}] if score difficulty um.dummy matches 1.. run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1 0.7
execute if entity @s[scores={um.boss_hp=..2,um.dummy=1}] if score difficulty um.dummy matches 1.. facing entity @p[distance=..50,gamemode=!spectator] feet run summon minecraft:armor_stand ^ ^ ^64 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.ba_dash","um.blood_amalgam"]}
execute if entity @s[scores={um.boss_hp=..2,um.dummy=1..30}] if score difficulty um.dummy matches 1.. as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.boss_hp=..2,um.dummy=1..30}] if score difficulty um.dummy matches 1.. facing entity @e[sort=nearest,tag=um.ba_dash] feet facing ^ ^ ^-1 run tp ^ ^ ^-1.2
execute if entity @s[scores={um.boss_hp=..2,um.dummy=1..30}] if score difficulty um.dummy matches 2.. facing entity @e[sort=nearest,tag=um.ba_dash] feet facing ^ ^ ^-1 run tp ^ ^ ^-0.8
execute if entity @s[scores={um.boss_hp=..2,um.dummy=20}] if score difficulty um.dummy matches 1 run kill @e[tag=um.ba_dash]
execute if entity @s[scores={um.boss_hp=..2,um.dummy=15}] if score difficulty um.dummy matches 2.. run kill @e[tag=um.ba_dash]
bossbar set undermagic:blood_amalgam players @a[distance=..50]
bossbar set undermagic:blood_amalgam visible true
bossbar set undermagic:blood_amalgam color red
execute if score @s um.music matches 2060 run playsound um:boss_music.blood_amalgam music @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 2060.. run scoreboard players set @s um.music 0
execute store result bossbar undermagic:blood_amalgam value run scoreboard players get @s um.boss_hp
effect give @e[tag=um.blood_minion] invisibility 2 2 true
execute unless entity @e[tag=um.blood_minion] run function undermagic:entity/blood_amalgam/blood_amalgam_hurt
execute unless entity @e[tag=um.bloodchalice,sort=nearest,distance=..40] facing entity @e[tag=um.bloodchalice,sort=nearest,limit=1,distance=..40] feet run tp ^ ^ ^1
tp @e[tag=um.blood_minion,distance=40..] @s
execute if score difficulty um.dummy matches 1.. run tp @a[distance=40..65] @s
scoreboard players add @s um.dummy_three 1
execute if score @s um.dummy_three matches 400.. if score difficulty um.dummy matches 2.. run function undermagic:blood_amalgam_heal
