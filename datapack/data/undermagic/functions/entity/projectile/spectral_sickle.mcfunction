tp @s ^ ^ ^1
particle minecraft:sweep_attack
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 60.. run kill @s
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_0 um.dummy 120
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 10.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 10.. if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:entity/projectile/bonus_sickle_spawn