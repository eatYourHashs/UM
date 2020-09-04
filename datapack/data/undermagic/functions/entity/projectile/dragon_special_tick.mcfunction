tp @s ^ ^ ^1.5
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.3 0.5 0.1 30
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200.. run kill @s
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,type=!#undermagic:undead] instant_damage 1 2
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,type=#undermagic:undead,tag=!um_blood_minion] instant_health 1 2
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,tag=um_blood_minion] instant_health 1 1