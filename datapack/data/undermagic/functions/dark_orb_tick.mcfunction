tp @s ^ ^ ^1
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200.. run kill @s
execute if score @s um.dummy matches 10.. run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 1
execute if score @s um.dummy matches 10.. run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 1
execute if score @s um.dummy matches 10.. run scoreboard players set @e[distance=..2,tag=!global.ignore] um.aw_mark 20
