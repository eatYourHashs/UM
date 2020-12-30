execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 70
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
data merge entity @s {PierceLevel:10b}
tag @s add um.greatbow_proc
tag @s add um.entity
