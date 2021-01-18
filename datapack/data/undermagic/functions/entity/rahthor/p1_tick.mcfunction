execute if score @s um.dummy matches 1 run function undermagic:entity/rahthor/move
execute if score @s um.dummy matches 2..20 facing entity @e[tag=um.rahthor_move_marker,limit=1,sort=nearest] feet run tp ^ ^ ^0.6
execute if score @s um.dummy matches 2..20 if entity @e[tag=um.rahthor_move_marker,distance=..1] run kill @e[tag=um.rahthor_move_marker]
execute if score @s um.dummy matches 2..20 unless entity @e[tag=um.rahthor_move_marker] run scoreboard players set @s um.dummy 21
execute facing entity @p feet positioned as @s run tp ~ ~ ~
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^ ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker,global.ignore"]}
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^4 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker,global.ignore"]}
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-4 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker,global.ignore"]}
execute if score @s um.dummy matches 30 as @e[tag=um.rahthor_marker] at @s facing entity @e[tag=um.rahthor,limit=1,sort=nearest] eyes run tp ~ ~ ~
execute if score @s um.dummy matches 30 run playsound minecraft:entity.evoker.prepare_attack player @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 32 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^5 0 0 0 0 1
execute if score @s um.dummy matches 34 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^4 0 0 0 0 1
execute if score @s um.dummy matches 36 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^3 0 0 0 0 1
execute if score @s um.dummy matches 38 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^2 0 0 0 0 1
execute if score @s um.dummy matches 40 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^1 0 0 0 0 1
execute if score @s um.dummy matches 42 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^ 0 0 0 0 1
execute if score @s um.dummy matches 44 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1
execute if score @s um.dummy matches 46 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-2 0 0 0 0 1
execute if score @s um.dummy matches 48 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-3 0 0 0 0 1
execute if score @s um.dummy matches 50 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 50 positioned ~ ~1.8 ~ facing entity @e[tag=um.rahthor_marker] feet run function undermagic:entity/rahthor/cast
