tp @s ^ ^ ^1
particle minecraft:witch ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 100
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 130
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 160
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute unless entity @s[tag=um.no_damage] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute if entity @a[distance=..2] run tag @s add um.no_damage
execute if entity @p[distance=..2] if score @e[tag=um.shadesull_boss,limit=1,sort=nearest] um.boss_hp matches ..600 run effect give @p blindness 2 0
execute if entity @p[distance=..2] if score @e[tag=um.shadesull_boss,limit=1,sort=nearest] um.boss_hp matches ..600 run effect give @p wither 5 1
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak