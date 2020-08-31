particle minecraft:smoke ~ ~1 ~ 0.2 0.5 0.2 0 1
particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 1
scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
scoreboard players add @s um.music 1
tp @a[distance=40..50] @s
execute facing entity @p feet run tp ^ ^ ^
kill @e[tag=um_hand_marker_l]
kill @e[tag=um_hand_marker_r]
kill @e[tag=um_hand_marker_l2]
kill @e[tag=um_hand_marker_r2]
kill @e[tag=um_hand_marker_l3]
kill @e[tag=um_hand_marker_r3]
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^-4 ^ ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l"]}
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^4 ^ ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r"]}
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^-3 ^3 ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l2"]}
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^3 ^3 ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r2"]}
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^-3 ^-3 ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_l3"]}
execute if entity @e[tag=um_shadesull_elder_hand] run summon armor_stand ^3 ^-3 ^ {Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_hand_marker_r3"]}
execute if entity @e[tag=um_shadesull_elder_hand] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800}] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=201..280,um.boss_hp=..600}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 400
execute if entity @s[scores={um.dummy=201..320,um.boss_hp=..600}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 400
execute if entity @s[scores={um.dummy=280}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 201
execute if entity @s[scores={um.dummy=320}] run scoreboard players set @s um.dummy 201
execute if entity @s[scores={um.dummy=202}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=222}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=227}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=232}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=237}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=242}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=247}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=252}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=257}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=401..600}] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=460}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=520}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=580}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=601..680,um.boss_hp=..400}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 800
execute if entity @s[scores={um.dummy=601..720,um.boss_hp=..400}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 800
execute if entity @s[scores={um.dummy=660}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 601
execute if entity @s[scores={um.dummy=602}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=622}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=627}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=632}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=637}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=642}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=647}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=652}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=657}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=700}] run scoreboard players set @s um.dummy 601
execute if entity @s[scores={um.dummy=801..1000,um.dummy_two=10..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=801..1000,um.dummy_two=10..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=801..1000,um.dummy_two=6..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=801..1000,um.dummy_two=6..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=1000}] run function undermagic:shadesull_elder_hands
execute if entity @s[scores={um.dummy=1001..1080,um.boss_hp=..300}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 1200
execute if entity @s[scores={um.dummy=1001..1120,um.boss_hp=..300}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 1200
execute if entity @s[scores={um.dummy=1060}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 1001
execute if entity @s[scores={um.dummy=1002}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1022}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1027}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1032}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1037}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1042}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1100}] run scoreboard players set @s um.dummy 1001
execute if entity @s[scores={um.dummy=1202}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1207}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1212}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1217}] at @p positioned ~ ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1217}] if score difficulty um.dummy matches 1.. at @p positioned ~6 ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1217}] if score difficulty um.dummy matches 1.. at @p positioned ~-6 ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1217}] if score difficulty um.dummy matches 1.. at @p positioned ~ ~20 ~6 facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1217}] if score difficulty um.dummy matches 1.. at @p positioned ~ ~20 ~-6 facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1222}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1227}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1232}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1237}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1242}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1247}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1252}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1257}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1262}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1260}] if score difficulty um.dummy matches 1 run scoreboard players set @s um.dummy 1201
execute if entity @s[scores={um.dummy=1300}] run scoreboard players set @s um.dummy 1201
execute if entity @s[scores={um.dummy=401..600}] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=1201..1320,um.boss_hp=..200}] run function undermagic:shadesull_elder_hands
execute if entity @s[scores={um.dummy=1201..1320,um.boss_hp=..200}] run scoreboard players set @s um.dummy 1400
execute if entity @s[scores={um.dummy=1400..1600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1400..1600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=1400..1600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1400..1600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=1580}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1590}] if entity @e[tag=um_shadesull_elder_hand] run scoreboard players set @s um.dummy 1401
execute if entity @s[scores={um.dummy=1400..1600}] unless entity @e[tag=um_shadesull_elder_hand] run scoreboard players set @s um.dummy 1601
execute if entity @s[scores={um.dummy=1602}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1607}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1612}] run function undermagic:shadesull_warp
execute if entity @s[scores={um.dummy=1617}] at @p positioned ~ ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1617}] if score difficulty um.dummy matches 1.. at @p positioned ~6 ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1617}] if score difficulty um.dummy matches 1.. at @p positioned ~-6 ~20 ~ facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1617}] if score difficulty um.dummy matches 1.. at @p positioned ~ ~20 ~6 facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1617}] if score difficulty um.dummy matches 1.. at @p positioned ~ ~20 ~-6 facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1622}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1627}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1632}] facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1637}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1642}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1647}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1652}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1657}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1662}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:shadesull_elder_bolt
execute if entity @s[scores={um.dummy=1620}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1640}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1660}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=1680}] as @r[distance=..50] at @s run function undermagic:shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1700}] run scoreboard players set @s um.dummy 1601
execute if score @s um.boss_hp matches ..400 unless entity @s[tag=um_shadesull_p2] run function undermagic:shadesull_p2
execute if score @s um.boss_hp matches ..100 if score @s um.dummy matches ..1999 run kill @e[tag=um_elder_bolt]
execute if score @s um.boss_hp matches ..100 if score @s um.dummy matches ..1999 run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.boss_hp matches ..100 if score @s um.dummy matches ..1999 run particle explosion_emitter
execute if score @s um.boss_hp matches ..100 if score @s um.dummy matches ..1999 run scoreboard players set @s um.dummy 2000
execute if score @s um.boss_hp matches ..100 run stopsound @a * undermagic:boss_music.shadesull_p2
execute if score @s um.dummy matches 2020 run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 2020 run particle explosion_emitter
execute if score @s um.dummy matches 2060 run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 2060 run particle explosion_emitter
execute if score @s um.dummy matches 2100 run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 2100 run particle explosion_emitter
execute if score @s um.dummy matches 2120 run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 2120 run particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0 10
execute if score @s um.dummy matches 2120 run particle minecraft:smoke ~ ~1 ~ 0.1 0.2 0.1 0.5 3000
execute if score @s um.dummy matches 2120 run kill @s
bossbar set undermagic:shadesull players @a[distance=..50]
bossbar set undermagic:shadesull visible true
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:shadesull value run data get entity @s Health 1
execute if score @s um.boss_hp matches ..100 run bossbar set undermagic:shadesull value 0
execute if score @s um.music matches 1260 unless entity @s[tag=um_shadesull_p2] run playsound undermagic:boss_music.shadesull_p1 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 1260.. unless entity @s[tag=um_shadesull_p2] run scoreboard players set @s um.music 0
execute if score @s um.music matches 2020 if entity @s[tag=um_shadesull_p2] run playsound undermagic:boss_music.shadesull_p2 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 2020.. if entity @s[tag=um_shadesull_p2] run scoreboard players set @s um.music 0
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 301..400 run effect give @s resistance 2 0 true
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 201..300 run effect give @s resistance 2 1 true
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp matches 101..200 run effect give @s resistance 2 2 true
