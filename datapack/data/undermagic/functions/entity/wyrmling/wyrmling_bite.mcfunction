particle minecraft:dragon_breath ^ ^0.5 ^1 0 0 0 0.1 40
scoreboard players set $math.in_0 um.dummy 120
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @p run function undermagic:utils/damage_entity
effect give @p nausea 5 0
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 1.5
kill @e[tag=um.wyrmling_target,distance=..35]
summon armor_stand ~ ~10 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["global.ignore","um.entity","um.wyrmling_target"]}
tp @s ~ ~1 ~
scoreboard players set @s um.dummy_two 0
