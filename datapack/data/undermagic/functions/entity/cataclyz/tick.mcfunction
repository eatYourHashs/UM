scoreboard players add @s um.dummy 1
effect give @s invisibility 10 1 true
particle minecraft:smoke ~ ~ ~ 0.2 0 0.2 0.03 10
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 1 1.5
execute store result score @s um.boss_hp run data get entity @s Health 1
execute facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 1..19 run tp @s ~ ~0.6 ~
execute if score @s um.dummy matches 1..19 run tp @s ~ ~0.6 ~
execute if score @s um.dummy matches 20 run scoreboard players set $math.in_0 um.dummy 2
execute if score @s um.dummy matches 20 if score @s um.boss_hp matches ..300 run scoreboard players set $math.in_0 um.dummy 3
execute if score @s um.dummy matches 20 if score @s um.boss_hp matches ..200 run scoreboard players set $math.in_0 um.dummy 4
execute if score @s um.dummy matches 20 run function undermagic:utils/random
execute if score @s um.dummy matches 20 run scoreboard players operation @s um.dummy_two = $math.out_0 um.dummy
execute if score @s um.dummy matches 20 run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy_two matches 1 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 1 3
execute if score @s um.dummy_two matches 2 run particle minecraft:dust 1 0.4 0 1 ~ ~ ~ 0.2 0 0.2 1 3
execute if score @s um.dummy_two matches 3 run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.2 0 0.2 1 3
execute if score @s um.dummy_two matches 4 run particle minecraft:dust 1 0 0.7 1 ~ ~ ~ 0.2 0 0.2 1 3
execute if score @s um.dummy matches 30 run function undermagic:entity/cataclyz/fireball
execute if score @s um.dummy matches 50 run function undermagic:entity/cataclyz/fireball
execute if score @s um.dummy matches 70 run function undermagic:entity/cataclyz/fireball
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 105 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.2
execute if score @s um.dummy matches 110 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.4
execute if score @s um.dummy matches 115 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.8
execute if score @s um.dummy matches 125..140 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 100..119 if score @s um.dummy_two matches 2 run particle flame ~ ~3 ~ 0.15 0.15 0.15 0.02 10
execute if score @s um.dummy matches 120..140 if score @s um.dummy_two matches 2 run particle flame ~ ~3 ~ 0.5 0.5 0.5 0.02 20
execute if score @s um.dummy matches 140 if score @s um.dummy_two matches 2 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 140 if score @s um.dummy_two matches 2 run summon armor_stand ~ ~3 ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_large_fireball"]}
execute if score @s um.dummy matches 200.. run scoreboard players set @s um.dummy 19
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^3 0.1 1 0.1 0 30
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^-3 ^ ^-1 0.1 1 0.1 0 30
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^3 ^ ^-1 0.1 1 0.1 0 30
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^3 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^-3 ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^3 ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run particle flame ~ ~ ~ 0.2 1 0.2 0.04 200
scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 1 as @e[tag=um.cataclyz_firestorm] run kill @s
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^2 ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^-2 ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^4 ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^-4 ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^-2 ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^-4 ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^2 ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 130 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^4 ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 150 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 150 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run particle flame ~ ~ ~ 0.2 1 0.2 0.04 200
execute if score @s um.dummy matches 150 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 150 if score @s um.dummy_two matches 1 as @e[tag=um.cataclyz_firestorm] run kill @s
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^ 0.1 1 0.1 0 30
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^2 0.1 1 0.1 0 30
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^4 0.1 1 0.1 0 30
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^-2 0.1 1 0.1 0 30
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run particle smoke ^ ^ ^-4 0.1 1 0.1 0 30
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^2 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^4 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^-2 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 1 positioned as @p run summon armor_stand ^ ^ ^-4 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_firestorm"]}
execute if score @s um.dummy matches 180 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 180 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] run particle flame ~ ~ ~ 0.2 1 0.2 0.04 200
execute if score @s um.dummy matches 180 if score @s um.dummy_two matches 1 at @e[tag=um.cataclyz_firestorm] as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 180 if score @s um.dummy_two matches 1 as @e[tag=um.cataclyz_firestorm] run kill @s
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 105 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.2
execute if score @s um.dummy matches 110 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.4
execute if score @s um.dummy matches 115 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.8
execute if score @s um.dummy matches 125..140 if score @s um.dummy_two matches 3 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 100..119 if score @s um.dummy_two matches 3 run particle soul_fire_flame ~ ~3 ~ 0.15 0.15 0.15 0.02 10
execute if score @s um.dummy matches 120..140 if score @s um.dummy_two matches 3 run particle soul_fire_flame ~ ~3 ~ 0.5 0.5 0.5 0.02 20
execute if score @s um.dummy matches 140 if score @s um.dummy_two matches 3 run summon armor_stand ~ ~3 ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_inferno"]}
execute if score @s um.dummy matches 140 if score @s um.dummy_two matches 3 as @e[tag=um.cataclyz_inferno,limit=1,sort=nearest] at @s facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 100 if score @s um.dummy_two matches 4 run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 100..139 if score @s um.dummy_two matches 4 run particle witch ~ ~3 ~ 0.2 0.2 0.2 0 10
execute if score @s um.dummy matches 140..159 if score @s um.dummy_two matches 4 run particle witch ~ ~3 ~ 0.4 0.4 0.4 0 20
execute if score @s um.dummy matches 120 if score @s um.dummy_two matches 4 run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 140 if score @s um.dummy_two matches 4 run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0.9
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 4 run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.5
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 4 run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.5
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 4 run summon armor_stand ~ ~3 ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.cataclyz_curse"]}
execute if score @s um.dummy matches 160 if score @s um.dummy_two matches 4 as @e[tag=um.cataclyz_curse,limit=1,sort=nearest] at @s facing entity @p feet run tp ~ ~ ~
execute as @e[tag=um.cataclyz_fireball] at @s run function undermagic:entity/cataclyz/fireball_tick
execute as @e[tag=um.cataclyz_large_fireball] at @s run function undermagic:entity/cataclyz/large_fireball_tick
execute as @e[tag=um.cataclyz_inferno] at @s run function undermagic:entity/cataclyz/inferno_tick
execute as @e[tag=um.cataclyz_curse] at @s run function undermagic:entity/cataclyz/curse_tick
bossbar set undermagic:cataclyz players @a[distance=..50]
bossbar set undermagic:cataclyz visible true
execute store result bossbar undermagic:cataclyz value run data get entity @s Health 1
