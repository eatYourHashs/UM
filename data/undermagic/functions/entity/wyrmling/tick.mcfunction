scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 3 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420087}
execute if score @s um.dummy matches 6 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420088}
execute if score @s um.dummy matches 9 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420089}
execute if score @s um.dummy matches 12 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420088}
execute if score @s um.dummy matches 13 run scoreboard players set @s um.dummy 1
execute if score @s um.dummy_two matches 800.. run scoreboard players set @s um.dummy_two 0
execute facing entity @e[tag=um_wyrmling_target,sort=nearest,limit=1,distance=..100] feet unless entity @s[scores={um.dummy_two=660..}] run tp ^ ^ ^0.3
execute unless entity @e[tag=um_wyrmling_target,distance=..100] if entity @p[distance=..100] run function undermagic:entity/wyrmling/wyrmling_retarget
execute if entity @e[tag=um_wyrmling_target,distance=..1] run function undermagic:entity/wyrmling/wyrmling_retarget
execute if entity @s[scores={um.dummy_two=500}] facing entity @p feet run summon armor_stand ^20 ^ ^10 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_wyrmling_target"]}
execute if entity @s[scores={um.dummy_two=560}] facing entity @p feet run function undermagic:entity/wyrmling/wyrmling_fireball
execute if entity @s[scores={um.dummy_two=660..}] facing entity @p feet if block ^ ^1 ^ air run tp ^ ^ ^0.4
execute if entity @s[scores={um.dummy_two=660..}] facing entity @p feet unless block ^ ^1 ^ air run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy_two=660..}] if entity @p[distance=..1] run function undermagic:entity/wyrmling/wyrmling_bite
effect give @s invisibility 10 1 true