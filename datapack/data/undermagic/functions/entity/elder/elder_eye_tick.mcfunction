execute store success score @s um.dummy_two as @e[tag=um_elder_hand] run help
execute unless entity @e[tag=um_elder_hand] run scoreboard players set @s um.dummy_two 0
kill @e[tag=um_hand_marker_l]
kill @e[tag=um_hand_marker_r]
kill @e[tag=um_hand_marker_l2]
kill @e[tag=um_hand_marker_r2]
kill @e[tag=um_hand_marker_l3]
kill @e[tag=um_hand_marker_r3]
summon armor_stand ^-3 ^-5 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l"]}
summon armor_stand ^3 ^-5 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r"]}
summon armor_stand ^-4 ^-3 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l2"]}
summon armor_stand ^4 ^-3 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r2"]}
summon armor_stand ^-5 ^-1 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l3"]}
summon armor_stand ^5 ^-1 ^1 {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r3"]}
execute facing entity @p[distance=8..64] feet unless score @s um.dummy matches 300.. run tp ^ ^ ^0.4
execute if entity @p[distance=..10] if entity @e[tag=um_elder_hand] run tp ~ ~0.3 ~
execute if entity @p[distance=..10] unless entity @e[tag=um_elder_hand] run tp ~ ~0.1 ~
particle minecraft:portal ~ ~1 ~ 0 0 0 1 10
execute store result score @s um.boss_hp run data get entity @s Health 1
bossbar set undermagic:elder players @a[distance=..64]
bossbar set undermagic:elder visible true
execute if entity @e[tag=um_elder_hand] run effect give @s resistance 1 99 true
scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_four 1
scoreboard players set @s[scores={um.dummy_four=11..}] um.dummy_four 0
scoreboard players set @s[scores={um.dummy=460..}] um.dummy 0
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
execute if entity @s[scores={um.dummy=90,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=110,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=130,um.dummy_two=0}] if score difficulty um.dummy matches 1.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=100,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=120,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
execute if entity @s[scores={um.dummy=140,um.dummy_two=0}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_laser_wall_attack
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
execute if entity @s[scores={um.dummy=300,um.dummy_two=0}] run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 1.5 0.5
execute if entity @s[scores={um.dummy=300..320,um.dummy_two=0}] run tp @s ~ ~0.2 ~
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 1 if score @s um.dummy matches 321 run effect give @s resistance 4 1 true
execute if score @s um.boss_hp matches ..100 if score difficulty um.dummy matches 2.. if score @s um.dummy matches 321 run effect give @s resistance 4 4 true
execute if entity @s[scores={um.dummy=300,um.dummy_two=0}] at @p[distance=..30] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_elder_ray"]}
execute if entity @s[scores={um.dummy=321..454,um.dummy_two=0}] as @e[limit=1,sort=nearest,tag=um_elder_ray] at @s run function undermagic:entity/elder/elder_ray_tick
scoreboard players set @s um.dummy_three 0
execute if entity @s[scores={um.dummy=321..454,um.dummy_two=0}] facing entity @e[sort=nearest,limit=1,tag=um_elder_ray] feet run tp @s ~ ~ ~
execute if entity @s[scores={um.dummy=321..454,um.dummy_two=0,um.dummy_four=2}] facing entity @e[sort=nearest,limit=1,tag=um_elder_ray] feet run function undermagic:entity/elder/elder_ray_cast
execute if entity @s[scores={um.dummy=455,um.dummy_two=0}] run kill @e[tag=um_elder_ray]
execute if score difficulty um.dummy matches 1.. if entity @s[scores={um.boss_hp=..150},tag=!um_spawned_hands] run function undermagic:entity/elder/elder_spawn_hands
execute if score difficulty um.dummy matches 2.. if entity @s[scores={um.boss_hp=..20},tag=!um_spawned_hands2] run function undermagic:entity/elder/elder_spawn_hands2
scoreboard players add @s um.music 1
execute if score @s um.music matches 1960 run playsound undermagic:boss_music.elder master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 1960.. run scoreboard players set @s um.music 0
