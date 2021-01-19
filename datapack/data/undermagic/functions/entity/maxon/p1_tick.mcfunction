execute store result score y1 um.dummy run data get entity @s Pos[1] 10
execute store result score y2 um.dummy run data get entity @p Pos[1] 10
scoreboard players add y1 um.dummy 50
execute if score y1 um.dummy < y2 um.dummy run scoreboard players set @s um.dummy_two 6
scoreboard players remove @s um.dummy_two 1
execute if score @s um.dummy_two matches 1.. run tp @s ~ ~2 ~
execute if score @s um.dummy matches 20..29 if entity @p[distance=2..] facing entity @p feet run tp ^ ^ ^0.4
execute if score @s um.dummy matches 20..29 if entity @p[distance=8..] facing entity @p feet run tp ^ ^ ^1.2
execute if score @s um.dummy matches 30 facing entity @p feet run particle minecraft:dust 1 0.2 0 2 ^ ^0.5 ^4 1.2 0 1.2 1 200
execute if score @s um.dummy matches 30 facing entity @p feet run summon armor_stand ^ ^0.5 ^4 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 30 run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 22 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 22 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 39 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 39 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 39 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 39 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 39 at @e[tag=um.maxon_marker] as @a[distance=..3,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 39 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 45..59 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 60..69 if entity @p[distance=2..] facing entity @p feet run tp ^ ^ ^0.4
execute if score @s um.dummy matches 60..69 if entity @p[distance=8..] facing entity @p feet run tp ^ ^ ^1.2
execute if score @s um.dummy matches 70 facing entity @p feet run particle minecraft:dust 1 0.2 0 2 ^ ^0.5 ^4 1.2 0 1.2 1 200
execute if score @s um.dummy matches 70 facing entity @p feet run summon armor_stand ^ ^0.5 ^4 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 70 run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 62 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 62 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 79 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 79 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 79 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 79 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 79 at @e[tag=um.maxon_marker] as @a[distance=..3,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 79 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 85 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 95 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 95 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 2
scoreboard players remove y1 um.dummy 50
execute if score @s um.dummy matches 95..99 if score y1 um.dummy > y2 um.dummy run tp @s ~ ~-0.2 ~
execute if score @s um.dummy matches 100 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 100 facing entity @p feet run summon armor_stand ^ ^ ^64 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 100 run particle minecraft:angry_villager ~ ~2.2 ~ 0.1 0 0.1 0 5
execute if score @s um.dummy matches 100 run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 120 run particle minecraft:angry_villager ~ ~2.2 ~ 0.1 0 0.1 0 5
execute if score @s um.dummy matches 140..180 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run tp @s ^ ^ ^1
scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 140 run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 140 run playsound minecraft:entity.hoglin.attack hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 140..180 as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 140..180 run particle minecraft:flame ~ ~1.25 ~ 0.2 0.5 0.2 0.03 4
execute if score @s um.dummy matches 180 run playsound minecraft:entity.hoglin.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 180 run particle explosion ~ ~1 ~
execute if score @s um.dummy matches 180 run tp ~ ~1 ~
execute if score @s um.dummy matches 180 run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 1 1.5
execute if score @s um.dummy matches 180 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 200.. run scoreboard players set @s um.dummy 0