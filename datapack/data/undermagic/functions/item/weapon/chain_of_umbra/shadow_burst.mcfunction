execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_0 um.dummy 200
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_3 um.dummy 0
execute as @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..4,tag=!um.wielder] run function undermagic:utils/damage_entity
execute as @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..4,tag=!um.wielder] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 20
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 2