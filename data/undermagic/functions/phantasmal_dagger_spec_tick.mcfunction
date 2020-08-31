tp @s ^ ^ ^1.4
particle minecraft:portal ~ ~0.7 ~ 0.2 0.2 0.2 0.1 10
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 50.. run kill @s
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. if entity @e[distance=..1,tag=!global.ignore] run particle explosion
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. if entity @e[distance=..1,tag=!global.ignore] run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.5
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. run effect give @e[distance=..1,tag=!um_undead] instant_damage 1 2
execute positioned ~ ~0.7 ~ if score @s um.dummy matches 5.. run effect give @e[distance=..1,tag=um_undead] instant_health 1 2