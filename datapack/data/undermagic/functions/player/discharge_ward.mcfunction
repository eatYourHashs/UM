scoreboard players set @s um.ent_ward 0
execute unless score @s um.dis_cd matches 1.. run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 2
execute unless score @s um.dis_cd matches 1.. run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 0.5
execute unless score @s um.dis_cd matches 1.. run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1
execute unless score @s um.dis_cd matches 1.. run particle minecraft:dust_color_transition 1 0.6 0 3 1 0 0 ~ ~1 ~ 6 6 6 1 2000
execute unless score @s um.dis_cd matches 1.. run scoreboard players set $math.in_0 um.dummy 2000
execute unless score @s um.dis_cd matches 1.. run scoreboard players set $math.in_1 um.dummy 0
execute unless score @s um.dis_cd matches 1.. run scoreboard players set $math.in_2 um.dummy 0
execute unless score @s um.dis_cd matches 1.. run scoreboard players set $math.in_3 um.dummy 0
tag @s add um.wielder
execute unless score @s um.dis_cd matches 1.. at @s as @e[tag=!um.wielder,type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..16] run function undermagic:utils/damage_entity
execute unless score @s um.dis_cd matches 1.. run scoreboard players set @s um.dis_cd 240
tag @s remove um.wielder
