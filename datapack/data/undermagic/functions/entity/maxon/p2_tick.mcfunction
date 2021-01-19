execute store result score y1 um.dummy run data get entity @s Pos[1] 10
execute store result score y2 um.dummy run data get entity @p Pos[1] 10
scoreboard players add y1 um.dummy 50
execute if score y1 um.dummy < y2 um.dummy run scoreboard players set @s um.dummy_two 6
scoreboard players remove @s um.dummy_two 1
execute if score @s um.dummy_two matches 1.. unless score @s um.dummy matches 241..280 run tp @s ~ ~2 ~
execute if score @s um.dummy matches 25..29 if entity @p[distance=2..] facing entity @p feet run tp ^ ^ ^0.4
execute if score @s um.dummy matches 25..29 if entity @p[distance=8..] facing entity @p feet run tp ^ ^ ^1.2
execute if score @s um.dummy matches 30 facing entity @p feet run particle minecraft:dust 1 0.2 0 2 ^ ^0.5 ^4 1.2 0 1.2 1 200
execute if score @s um.dummy matches 30 facing entity @p feet run summon armor_stand ^ ^0.5 ^4 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 30 run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 22 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 22 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 37 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 37 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 37 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 37 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 37 at @e[tag=um.maxon_marker] as @a[distance=..3,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 37 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 40..49 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 50..54 if entity @p[distance=2..] facing entity @p feet run tp ^ ^ ^0.4
execute if score @s um.dummy matches 50..54 if entity @p[distance=8..] facing entity @p feet run tp ^ ^ ^1.2
execute if score @s um.dummy matches 55 facing entity @p feet run particle minecraft:dust 1 0.2 0 2 ^ ^0.5 ^4 1.2 0 1.2 1 200
execute if score @s um.dummy matches 55 facing entity @p feet run summon armor_stand ^ ^0.5 ^4 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 55 run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 1
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 44 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 44 run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 62 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 62 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 62 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 62 run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.8
execute if score @s um.dummy matches 62 at @e[tag=um.maxon_marker] as @a[distance=..3,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 62 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 65 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 75 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 75 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 2

execute if score @s um.dummy matches 105 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 125 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 75 facing entity @p feet run summon armor_stand ^ ^ ^64 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 90..105 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run tp @s ^ ^ ^2
execute if score @s um.dummy matches 110..125 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run tp @s ^ ^ ^2
execute if score @s um.dummy matches 130..145 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run tp @s ^ ^ ^2
execute if score @s um.dummy matches 105 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 125 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 145 run kill @e[tag=um.maxon_marker]
execute if score @s um.dummy matches 105 facing entity @p feet run summon armor_stand ^ ^ ^64 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 125 facing entity @p feet run summon armor_stand ^ ^ ^64 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 90 run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 90 run playsound minecraft:entity.hoglin.attack hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 110 run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 110 run playsound minecraft:entity.hoglin.attack hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 130 run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 130 run playsound minecraft:entity.hoglin.attack hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 90..105 as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 110..125 as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 130..145 as @a[distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 90..105 run particle minecraft:flame ~ ~1.25 ~ 0.2 0.5 0.2 0.03 4
execute if score @s um.dummy matches 165 run playsound minecraft:entity.hoglin.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 105 run particle explosion ~ ~1 ~
execute if score @s um.dummy matches 125 run particle explosion ~ ~1 ~
scoreboard players set $math.in_0 um.dummy 300
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 165 as @a[distance=..4] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 165 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 165 run particle explosion_emitter ~ ~1 ~
execute if score @s um.dummy matches 175 facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 165 run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 1 1.5
execute if score @s um.dummy matches 220 run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 230 at @p run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[um.entity,global.ignore,um.maxon_marker]}
execute if score @s um.dummy matches 230 at @p run particle minecraft:dust 1 0.2 0 2 ~ ~0.5 ~ 1.5 0 1.5 1 300
execute if score @s um.dummy matches 220..240 run tp ~ ~1 ~
execute if score @s um.dummy matches 241..280 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run tp ^ ^ ^1
execute if score @s um.dummy matches 241..280 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run particle explosion
execute if score @s um.dummy matches 241..280 facing entity @e[sort=nearest,limit=1,tag=um.maxon_marker] feet run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 1
execute if score @s um.dummy matches 241..280 if entity @e[sort=nearest,limit=1,tag=um.maxon_marker,distance=..1] run particle explosion_emitter
execute if score @s um.dummy matches 241..280 if entity @e[sort=nearest,limit=1,tag=um.maxon_marker,distance=..1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 241..280 if entity @e[sort=nearest,limit=1,tag=um.maxon_marker,distance=..1] run particle flame ~ ~ ~ 0 0 0 0.5 500
execute if score @s um.dummy matches 241..280 if entity @e[sort=nearest,limit=1,tag=um.maxon_marker,distance=..1] as @p[distance=..5,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 241..280 if entity @e[sort=nearest,limit=1,tag=um.maxon_marker,distance=..1] run scoreboard players set @s um.dummy 299
execute if score @s um.dummy matches 300.. run scoreboard players set @s um.dummy 0