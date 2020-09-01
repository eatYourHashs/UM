tp @s ^ ^ ^1
particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 30.. run kill @s
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,type=!#undermagic:undead] instant_damage 1 1
execute if score @s um.dummy matches 10.. run effect give @e[distance=..4,type=#undermagic:undead] instant_health 1 1