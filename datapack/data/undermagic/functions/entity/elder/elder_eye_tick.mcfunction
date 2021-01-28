execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 1 0.5
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 1 0.5
execute store success score @s um.dummy_two as @e[tag=um.elder_hand] run help
execute unless entity @e[tag=um.elder_hand] run scoreboard players set @s um.dummy_two 0
kill @e[tag=um.hand_marker_l]
kill @e[tag=um.hand_marker_r]
kill @e[tag=um.hand_marker_l2]
kill @e[tag=um.hand_marker_r2]
kill @e[tag=um.hand_marker_l3]
kill @e[tag=um.hand_marker_r3]
summon armor_stand ^-3 ^-5 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_l"]}
summon armor_stand ^3 ^-5 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_r"]}
summon armor_stand ^-4 ^-3 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_l2"]}
summon armor_stand ^4 ^-3 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_r2"]}
summon armor_stand ^-5 ^-1 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_l3"]}
summon armor_stand ^5 ^-1 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.hand_marker_r3"]}
execute facing entity @p[distance=8..64] feet unless score @s um.dummy matches 300.. run tp ^ ^ ^0.4
execute facing entity @p[distance=8..64] feet if score @s um.dummy_five matches ..200 unless score @s um.dummy matches 300.. run tp ^ ^ ^0.4
execute if entity @p[distance=..10] if entity @e[tag=um.elder_hand] run tp ~ ~0.3 ~
execute if entity @p[distance=..10] unless entity @e[tag=um.elder_hand] run tp ~ ~0.1 ~
particle minecraft:portal ~ ~1 ~ 0 0 0 1 10
execute store result score @s um.boss_hp run data get entity @s Health 1
scoreboard players remove @s um.boss_hp 200
execute if entity @e[tag=um.elder_hand] run effect give @s resistance 1 99 true
execute if entity @e[tag=um.elder_hand] run tag @s add um.untargetable
execute unless entity @e[tag=um.elder_hand] run tag @s remove um.untargetable
scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_four 1
scoreboard players add @s um.dummy_five 1
scoreboard players set @s[scores={um.dummy_four=6..}] um.dummy_four 0
scoreboard players set @s[scores={um.dummy=460..,um.boss_hp=1..}] um.dummy 0
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1.. if score @s um.dummy matches 1 run scoreboard players set @s um.dummy 55
execute if entity @s[scores={um.dummy=60}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=120}] if score difficulty um.dummy matches 0 run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=180}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=240}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=245}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=250}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=300,um.dummy_two=1..2}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=360,um.dummy_two=1..2}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=65,um.dummy_two=..1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=70,um.dummy_two=..1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=125,um.dummy_two=..1}] if score difficulty um.dummy matches 0 run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=130,um.dummy_two=..1}] if score difficulty um.dummy matches 0 run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=185,um.dummy_two=..1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=190,um.dummy_two=..1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=305,um.dummy_two=1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=310,um.dummy_two=1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=365,um.dummy_two=1}] run function undermagic:entity/elder/elder_eye_bolt
execute if entity @s[scores={um.dummy=370,um.dummy_two=1}] run function undermagic:entity/elder/elder_eye_bolt
#execute if entity @s[scores={um.dummy=90,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
#execute if entity @s[scores={um.dummy=110,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
#execute if entity @s[scores={um.dummy=130,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
#execute if entity @s[scores={um.dummy=100,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
#execute if entity @s[scores={um.dummy=120,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
#execute if entity @s[scores={um.dummy=140,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=90,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/spawn_eyes
execute if entity @s[scores={um.dummy=91,um.dummy_two=0}] as @e[tag=um.elder_beam_hand] at @s facing entity @p feet run tp ^ ^ ^
execute if entity @s[scores={um.dummy=110,um.dummy_two=0}] if score difficulty um.dummy matches 1.. as @e[tag=um.elder_beam_hand] at @s run function undermagic:entity/elder/hand_beams
execute if entity @s[scores={um.dummy=120,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/spawn_eyes
execute if entity @s[scores={um.dummy=121,um.dummy_two=0}] as @e[tag=um.elder_beam_hand] at @s facing entity @p feet run tp ^ ^ ^
execute if entity @s[scores={um.dummy=140,um.dummy_two=0}] if score difficulty um.dummy matches 1.. as @e[tag=um.elder_beam_hand] at @s run function undermagic:entity/elder/hand_beams
execute if entity @s[scores={um.dummy=75,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=80,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=85,um.boss_hp=..250}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_warp
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1.. if score @s um.dummy matches 90 run scoreboard players set @s um.dummy 120
execute if entity @s[scores={um.dummy=135,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=140,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=145,um.boss_hp=..250}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_warp
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1.. if score @s um.dummy matches 150 run scoreboard players set @s um.dummy 180
execute if entity @s[scores={um.dummy=195,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=200,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=205,um.boss_hp=..250}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_warp
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1.. if score @s um.dummy matches 210 run scoreboard players set @s um.dummy 240
execute if entity @s[scores={um.dummy=255,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=260,um.dummy_two=0}] run function undermagic:entity/elder/elder_warp
execute if entity @s[scores={um.dummy=265,um.boss_hp=..250}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_warp
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1.. if score @s um.dummy matches 270 run scoreboard players set @s um.dummy 330
execute if entity @s[scores={um.dummy=300}] run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 1.5 0.5
execute if entity @s[scores={um.dummy=300..320,um.dummy_two=0}] run tp @s ~ ~0.2 ~
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1 if score @s um.dummy matches 321 run effect give @s resistance 4 1 true
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 2.. if score @s um.dummy matches 321 run effect give @s resistance 4 2 true
execute if entity @s[scores={um.dummy=300}] facing entity @p[distance=..50] feet run summon minecraft:armor_stand ^ ^ ^2 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.elder_ray"]}
execute if entity @s[scores={um.dummy=300,um.dummy_two=0}] as @e[tag=um.elder_ray] at @s run tp @s ~ ~4 ~
execute if entity @s[scores={um.dummy=321..454}] facing entity @p[distance=..50] feet run summon minecraft:armor_stand ^ ^ ^2 {Marker:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.elder_ray_target"]}
execute if entity @s[scores={um.dummy=321..454}] as @e[limit=1,sort=nearest,tag=um.elder_ray] at @s run function undermagic:entity/elder/elder_ray_tick
scoreboard players set @s um.dummy_three 0
execute if entity @s[scores={um.dummy=321..454}] facing entity @e[sort=nearest,limit=1,tag=um.elder_ray] feet run tp ^ ^ ^
execute if entity @s[scores={um.dummy=321..454,um.dummy_four=2}] facing entity @e[sort=nearest,limit=1,tag=um.elder_ray] feet run function undermagic:entity/elder/elder_ray_cast
execute if entity @s[scores={um.dummy=455}] run kill @e[tag=um.elder_ray]
execute if score difficulty um.dummy matches 1.. if entity @s[scores={um.boss_hp=..150},tag=!um.spawned_hands] run function undermagic:entity/elder/elder_spawn_hands
execute if score difficulty um.dummy matches 2.. if entity @s[scores={um.boss_hp=..20},tag=!um.spawned_hands2] run function undermagic:entity/elder/elder_spawn_hands2
scoreboard players add @s um.music 1
execute if score @s um.music matches 1960 run playsound um:music.elder music @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 1960.. run scoreboard players set @s um.music 0

execute if score @s um.boss_hp matches ..0 unless entity @s[tag=um.dead] run scoreboard players set @s um.dummy 499
execute if score @s um.boss_hp matches ..0 unless entity @s[tag=um.dead] run tag @s add um.dead

execute if score @s um.dummy matches 500 run effect give @s resistance 7 4 true
execute if score @s um.dummy matches 500 run stopsound @a * um:music.elder
execute if score @s um.dummy matches 500 run playsound minecraft:entity.enderman.stare hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 500 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 520 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 540 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 550 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.9
execute if score @s um.dummy matches 560 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 565 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.1
execute if score @s um.dummy matches 570 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.2
execute if score @s um.dummy matches 575 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.3
execute if score @s um.dummy matches 580 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.4
execute if score @s um.dummy matches 585 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
execute if score @s um.dummy matches 590 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 595 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 600.. run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 640 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 640 run particle explosion_emitter
execute if score @s um.dummy matches 640 run kill @s
execute if score @s um.dummy matches 560.. run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 20
execute if score @s um.dummy matches 600.. run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 40

execute as @e[tag=um.elder_hand] at @s run function undermagic:entity/elder/elder_hand_tick
bossbar set undermagic:elder players @a[distance=..64]
bossbar set undermagic:elder visible true
execute store result bossbar undermagic:elder value run scoreboard players get @s um.boss_hp
