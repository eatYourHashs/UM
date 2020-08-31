tp @s ^ ^ ^0.5
particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0 30
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 400.. run kill @s
execute if score @s um.dummy matches 10.. run effect give @e[distance=..3,tag=!um_undead] instant_damage 1 2
execute if score @s um.dummy matches 10.. run effect give @e[distance=..3,tag=um_undead] instant_health 1 2
execute if score @s um.dummy matches 10.. run scoreboard players set @e[distance=..2,tag=!global.ignore] um.aw_mark 60