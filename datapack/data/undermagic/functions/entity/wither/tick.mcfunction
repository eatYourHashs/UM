scoreboard players add @s um.dummy 1
execute if score difficulty um.dummy matches 1.. unless entity @s[tag=um.wither_mod] run attribute @s minecraft:generic.max_health modifier add 668d8006-a095-454c-8f92-958ff3b8f4c2 wither_boost 100 add
execute if score difficulty um.dummy matches 1.. unless entity @s[tag=um.wither_mod] run data modify entity @s Health set value 400
execute if score difficulty um.dummy matches 1.. unless entity @s[tag=um.wither_mod] run tag @s add um.wither_mod
execute if score difficulty um.dummy matches 1.. run tp @e[limit=1,tag=um.wither_marker,sort=nearest,distance=..6]
execute if score difficulty um.dummy matches 1.. unless entity @e[distance=..6,tag=um.wither_marker] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["um.entity","global.ignore","um.wither_marker"]}
execute if score difficulty um.dummy matches 1.. at @s facing entity @p feet run tp ~ ~ ~
execute if score difficulty um.dummy matches 1.. store result score @s um.boss_hp run data get entity @s Health
execute if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 200
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp < @s um.dummy_two as @e[type=wither_skull,distance=..3] at @s run function undermagic:entity/wither/convert_beam
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp < @s um.dummy_two if score @s um.dummy matches 100 run function undermagic:entity/wither/spawn_decay_clouds
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp < @s um.dummy_two if score @s um.dummy matches 101 run spreadplayers ~ ~ 3 12 false @e[tag=um.wither_cloud]
execute if score difficulty um.dummy matches 1.. if score @s um.boss_hp < @s um.dummy_two if score @s um.dummy matches 101 run tag @e[tag=um.wither_cloud] remove um.wither_cloud
execute if score @s um.dummy matches 101.. run scoreboard players set @s um.dummy 1
