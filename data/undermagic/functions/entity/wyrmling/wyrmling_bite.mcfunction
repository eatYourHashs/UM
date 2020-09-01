particle minecraft:dragon_breath ^ ^0.5 ^1 0 0 0 0.1 40
effect give @p instant_damage 1 1
effect give @p nausea 5 0
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 1.5
kill @e[tag=um_wyrmling_target,distance=..35]
summon armor_stand ~ ~10 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_wyrmling_target"]}
tp @s ~ ~1 ~
scoreboard players set @s um.dummy_two 0
