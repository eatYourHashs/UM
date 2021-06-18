
tag @s add um.blaster_proc
tag @s add um.entity

data merge entity @s {pickup:0b}

execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 15
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
