execute if score @s um.dummy matches 2 run function undermagic:entity/rahthor/move
execute if score @s um.dummy matches 2..20 facing entity @e[tag=um.rahthor_move_marker,limit=1,sort=nearest] feet run tp ^ ^ ^0.6
execute if score @s um.dummy matches 2..20 if entity @e[tag=um.rahthor_move_marker,distance=..1] run kill @e[tag=um.rahthor_move_marker]
execute if score @s um.dummy matches 2..20 unless entity @e[tag=um.rahthor_move_marker] run scoreboard players set @s um.dummy 21
execute if score @s um.dummy matches 20 run kill @e[tag=um.rahthor_move_marker]
execute facing entity @p feet positioned as @s run tp ~ ~ ~
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^ ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^2 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 30 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-2 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 30 as @e[tag=um.rahthor_marker] at @s facing entity @e[tag=um.rahthor,limit=1,sort=nearest] eyes run tp ~ ~ ~
execute if score @s um.dummy matches 30 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
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
execute if score @s um.dummy matches 50 run kill @e[tag=um.rahthor_marker]
execute if score @s um.dummy matches 50 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^3 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 50 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^1 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 50 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-1 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 50 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-3 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 50 as @e[tag=um.rahthor_marker] at @s facing entity @e[tag=um.rahthor,limit=1,sort=nearest] eyes run tp ~ ~ ~
execute if score @s um.dummy matches 50 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 52 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^5 0 0 0 0 1
execute if score @s um.dummy matches 54 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^4 0 0 0 0 1
execute if score @s um.dummy matches 56 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^3 0 0 0 0 1
execute if score @s um.dummy matches 58 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^2 0 0 0 0 1
execute if score @s um.dummy matches 60 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^1 0 0 0 0 1
execute if score @s um.dummy matches 62 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^ 0 0 0 0 1
execute if score @s um.dummy matches 64 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1
execute if score @s um.dummy matches 66 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-2 0 0 0 0 1
execute if score @s um.dummy matches 68 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-3 0 0 0 0 1
execute if score @s um.dummy matches 70 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @e[tag=um.rahthor_marker] feet run function undermagic:entity/rahthor/cast
execute if score @s um.dummy matches 70 run kill @e[tag=um.rahthor_marker]
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^3.2 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^1.6 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^ ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-1.6 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 70 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^-3.2 ^ ^5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 70 as @e[tag=um.rahthor_marker] at @s facing entity @e[tag=um.rahthor,limit=1,sort=nearest] eyes run tp ~ ~ ~
execute if score @s um.dummy matches 70 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 72 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^5 0 0 0 0 1
execute if score @s um.dummy matches 74 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^4 0 0 0 0 1
execute if score @s um.dummy matches 76 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^3 0 0 0 0 1
execute if score @s um.dummy matches 78 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^2 0 0 0 0 1
execute if score @s um.dummy matches 80 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^1 0 0 0 0 1
execute if score @s um.dummy matches 82 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^ 0 0 0 0 1
execute if score @s um.dummy matches 84 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1
execute if score @s um.dummy matches 86 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-2 0 0 0 0 1
execute if score @s um.dummy matches 88 as @e[tag=um.rahthor_marker] at @s run particle minecraft:smoke ^ ^ ^-3 0 0 0 0 1
execute if score @s um.dummy matches 90 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 90 positioned ~ ~1.8 ~ facing entity @e[tag=um.rahthor_marker] feet run function undermagic:entity/rahthor/cast
execute if score @s um.dummy matches 90 run kill @e[tag=um.rahthor_marker]
execute if score @s um.dummy matches 120 run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 120 run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 120 run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 120 run summon armor_stand ^ ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^ ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^ ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^2 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^2 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^2 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^4 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^4 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^4 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^6 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^6 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^6 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^8 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^8 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^8 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^10 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^10 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^10 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-2 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-2 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-2 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-4 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-4 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-4 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-6 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-6 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-6 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-8 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-8 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-8 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-10 ^ ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-10 ^1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120 run summon armor_stand ^-10 ^-1 ^-10 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_bullet","global.ignore"]}
execute if score @s um.dummy matches 120..180 at @e[tag=um.rahthor_bullet] run particle flame
execute if score @s um.dummy matches 140 at @e[tag=um.rahthor_bullet] run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 140 as @e[tag=um.rahthor_bullet] at @s facing entity @p feet run tp ~ ~ ~
execute if score @s um.dummy matches 140..180 as @e[tag=um.rahthor_bullet] at @s run tp ^ ^ ^1
scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 2
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 140..180 as @e[tag=um.rahthor_bullet] at @s as @a[distance=..2,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 180 run kill @e[tag=um.rahthor_bullet]
execute if score @s um.dummy matches 190 run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 190 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^ ^ ^3 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 220 run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 220 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 220..280 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 2
execute if score @s um.dummy matches 220..280 as @e[tag=um.rahthor_marker] at @s facing entity @p eyes run tp ^ ^ ^0.15
execute if score @s um.dummy matches 220..280 positioned ~ ~1.8 ~ facing entity @e[tag=um.rahthor_marker] feet run function undermagic:entity/rahthor/raycast
execute if score @s um.dummy matches 280 run kill @e[tag=um.rahthor_marker]
execute if score @s um.dummy matches 290.. run scoreboard players set @s um.dummy 0
