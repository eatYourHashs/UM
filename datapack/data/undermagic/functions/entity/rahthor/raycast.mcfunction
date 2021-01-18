scoreboard players add temp um.dummy 1
particle flame ~ ~ ~ 0.1 0.1 0.1 0 10
execute if score temp um.dummy matches 5 run particle explosion
scoreboard players set $math.in_0 um.dummy 300
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute as @a[distance=..2,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:entity/rahthor/raycast
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0