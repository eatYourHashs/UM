tp @s ~ ~-0.6 ~
execute if score difficulty um.dummy matches 1.. run tp @s ~ ~-0.2 ~
execute if score difficulty um.dummy matches 2.. run tp @s ~ ~-0.2 ~
particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 0 6
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 140.. run kill @s
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run summon tnt ~ ~0.1 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air if score @e[tag=um.shadesull_boss,limit=1,sort=nearest] um.boss_hp matches ..400 run function undermagic:entity/shadesull/explosive_orb
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 300
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 400
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong
