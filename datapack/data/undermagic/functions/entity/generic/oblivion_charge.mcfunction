scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 12.. run particle minecraft:smoke ~ ~ ~ 0.1 3 0.1 0.2 1000
execute if score @s um.dummy matches 12.. run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 12.. positioned ~ ~ ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~1 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~2 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~3 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~4 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~5 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~-1 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~-2 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~-3 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~-4 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. positioned ~ ~-5 ~ run tag @e[distance=..2,tag=!global.ignore] add um_oblivion_hit
execute if score @s um.dummy matches 12.. run scoreboard players set @e[tag=um_oblivion_hit] um.aw_mark 100
execute if score @s um.dummy matches 12.. run scoreboard players set $math.in_0 um.dummy 500
execute if score @s um.dummy matches 12.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 12.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 12.. as @e[tag=um_oblivion_hit] run function undermagic:utils/damage_entity
execute if score @s um.dummy matches 12.. as @e[tag=um_oblivion_hit] run tag @s remove um_oblivion_hit
execute if score @s um.dummy matches 12.. run kill @s