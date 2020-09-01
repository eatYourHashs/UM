tp @s ^ ^ ^1
particle minecraft:witch ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run effect give @p instant_damage 1 0
execute if entity @p[distance=..2] if score @e[tag=um_shadesull,limit=1,sort=nearest] um.boss_hp matches ..600 run effect give @p blindness 5 0
execute if entity @p[distance=..2] if score @e[tag=um_shadesull,limit=1,sort=nearest] um.boss_hp matches ..600 run effect give @p wither 5 1
