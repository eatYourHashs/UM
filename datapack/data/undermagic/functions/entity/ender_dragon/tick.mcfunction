
execute if score difficulty um.dummy matches 1.. if entity @s[nbt={DragonPhase:8}] facing entity @p feet run tp @s ^ ^ ^0.5

execute if score difficulty um.dummy matches 1.. as @e[type=enderman,distance=0..] run tp @s ~ ~-200 ~
execute if score difficulty um.dummy matches 1.. run kill @e[type=enderman,distance=0..]

execute if score difficulty um.dummy matches 1.. run scoreboard players add dragon um.dummy 1
execute if score difficulty um.dummy matches 1.. unless entity @e[type=minecraft:end_crystal,distance=0..] if score dragon um.dummy matches 150 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. unless entity @e[type=minecraft:end_crystal,distance=0..] if score dragon um.dummy matches 50 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. unless entity @e[type=minecraft:end_crystal,distance=0..] if score dragon um.dummy matches 100 at @r[distance=0..] run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 1.. if score dragon um.dummy matches 201.. run scoreboard players set dragon um.dummy 0

execute if score difficulty um.dummy matches 1.. if entity @e[type=minecraft:end_crystal,distance=0..] run data modify entity @s Health set value 200
execute if score difficulty um.dummy matches 1.. run scoreboard players add @s um.dummy 1
execute if score difficulty um.dummy matches 1 if score @s um.dummy matches 600.. if entity @e[type=minecraft:end_crystal,distance=0..] run summon zoglin ~ ~ ~ {DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,Health:20f,Tags:["um.entity","um.crystal_breath"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:40}],Attributes:[{Name:generic.max_health,Base:20}]}
execute if score difficulty um.dummy matches 1 if score @s um.dummy matches 600.. if entity @e[type=minecraft:end_crystal,distance=0..] run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 2 1
execute if score difficulty um.dummy matches 1 if score @s um.dummy matches 600.. run scoreboard players set @s um.dummy 0
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 300.. if entity @e[type=minecraft:end_crystal,distance=0..] run summon bee ~ ~ ~ {DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,Health:20f,Tags:["um.entity","um.crystal_breath"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:40}],Attributes:[{Name:generic.max_health,Base:20}]}
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 300.. if entity @e[type=minecraft:end_crystal,distance=0..] run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 2 1
execute if score difficulty um.dummy matches 2.. if score @s um.dummy matches 300.. run scoreboard players set @s um.dummy 0
execute store result score @s um.dummy_two if entity @e[tag=um.wyrmling]
execute if score difficulty um.dummy matches 1 unless score @s um.dummy_two matches 10.. if predicate undermagic:probability/0.01 at @r[distance=0..] run function undermagic:entity/wyrmling/spawn
execute if score difficulty um.dummy matches 2.. unless score @s um.dummy_two matches 20.. if predicate undermagic:probability/0.03 at @r[distance=0..] run function undermagic:entity/wyrmling/spawn
