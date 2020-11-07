
tag @s add um.greatbow_proc
tag @s add um.entity

data merge entity @s {PierceLevel:10b}

execute store result score a um.dummy run data get entity @s Motion[0] 12000
execute store result score b um.dummy run data get entity @s Motion[1] 12000
execute store result score c um.dummy run data get entity @s Motion[2] 12000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 50
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
