
execute if score difficulty um.dummy matches 1.. run scoreboard players add @s um.dummy 1
execute if score difficulty um.dummy matches 1.. run effect give @s resistance 1 0 true
execute if score difficulty um.dummy matches 1.. run scoreboard players set @s[scores={um.dummy=21..}] um.dummy 0

execute if score difficulty um.dummy matches 1.. store result score @s um.boss_hp run data get entity @s Health
execute if entity @s[scores={um.boss_hp=..150,um.dummy=10}] if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute if entity @s[scores={um.boss_hp=..150,um.dummy=10}] if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute if entity @s[scores={um.boss_hp=..175,um.dummy=10}] if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute if entity @s[scores={um.boss_hp=..150,um.dummy=5}] if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute if entity @s[scores={um.boss_hp=..150,um.dummy=5}] if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute if entity @s[scores={um.boss_hp=..175,um.dummy=5}] if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute if entity @s[scores={um.boss_hp=..150,um.dummy=15}] if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute if entity @s[scores={um.boss_hp=..150,um.dummy=15}] if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute if entity @s[scores={um.boss_hp=..175,um.dummy=15}] if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute if entity @s[scores={um.boss_hp=..150,um.dummy=20}] if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 10
execute if entity @s[scores={um.boss_hp=..150,um.dummy=20}] if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 15
execute if entity @s[scores={um.boss_hp=..175,um.dummy=20}] if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute if entity @s[scores={um.boss_hp=..150,um.dummy=20}] if score difficulty um.dummy matches 1 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["global.ignore","um.entity","um.processed"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}]}
execute if entity @s[scores={um.boss_hp=..150,um.dummy=20}] if score difficulty um.dummy matches 2.. run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["global.ignore","um.entity","um.processed"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}]}
execute if entity @s[scores={um.boss_hp=..150,um.dummy=20}] if score difficulty um.dummy matches 1.. run playsound minecraft:entity.wither_skeleton.hurt hostile @a ~ ~ ~ 1 0.5

