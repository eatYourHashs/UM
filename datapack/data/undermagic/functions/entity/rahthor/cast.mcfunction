scoreboard players add temp um.dummy 1
particle flame ~ ~ ~ 0.1 0.1 0.1 0 4
scoreboard players set $math.in_0 um.dummy 180
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 2
scoreboard players set $math.in_3 um.dummy 0
execute as @a[distance=..1,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if entity @a[distance=..1] run scoreboard players set temp um.dummy 101
execute if entity @a[distance=..1] run particle minecraft:explosion
execute unless score temp um.dummy matches 101.. positioned ^ ^ ^0.5 run function undermagic:entity/rahthor/cast
execute if score temp um.dummy matches 101.. run scoreboard players set temp um.dummy 0