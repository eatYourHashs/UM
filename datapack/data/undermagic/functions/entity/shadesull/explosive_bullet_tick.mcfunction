tp @s ~ ~-0.6 ~
execute if score difficulty um.dummy matches 1.. run tp @s ~ ~-0.2 ~
execute if score difficulty um.dummy matches 2.. run tp @s ~ ~-0.2 ~
particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 0 6
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 140.. run kill @s
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 300
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 400
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute if score difficulty um.dummy matches 0..1 run scoreboard players set $math.in_3 um.dummy 20
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_3 um.dummy 40
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..4] run function undermagic:utils/damage_entity
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.5 100
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air if score @e[tag=um.shadesull_boss,limit=1,sort=nearest] um.boss_hp matches ..400 run function undermagic:entity/shadesull/explosive_orb
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong
