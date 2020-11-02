
tag @s add um_blaster_proc
tag @s add um_entity

data merge entity @s {pickup:0b}

execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players remove dmg um.dummy 5
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
