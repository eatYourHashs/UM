execute unless entity @s[tag=um.p2] run scoreboard players set @s um.dummy 0
execute unless entity @s[tag=um.p2] run tag @s add um.p2
execute if score @s um.dummy matches 1 run kill @e[tag=um.rahthor_marker]
execute if score @s um.dummy matches 5 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 5 positioned ~ ~1.8 ~ facing entity @p feet run summon armor_stand ^ ^ ^3 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["um.rahthor_marker","global.ignore"]}
execute if score @s um.dummy matches 10 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.2
execute if score @s um.dummy matches 15 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.4
execute if score @s um.dummy matches 20 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s um.dummy matches 25 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.8
execute if score @s um.dummy matches 30..60 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 60 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 60 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 61.. run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 61.. as @e[tag=um.rahthor_marker] at @s facing entity @p eyes run tp ^ ^ ^0.1
execute if score @s um.dummy matches 61.. positioned ~ ~1.8 ~ facing entity @e[tag=um.rahthor_marker] feet run function undermagic:entity/rahthor/raycast
execute if score @s um.dummy matches 61.. facing entity @e[tag=um.rahthor_marker] feet run tp ~ ~ ~