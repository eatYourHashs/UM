tp @s ^ ^ ^0.6
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run particle minecraft:explosion
execute if entity @p[distance=..2] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 30
execute if entity @p[distance=..2] run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
execute if entity @p[distance=..2] run effect give @p instant_damage 1 1
execute if entity @p[distance=..2] run kill @s
