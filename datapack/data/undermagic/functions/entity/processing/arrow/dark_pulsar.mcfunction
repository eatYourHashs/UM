
execute store result score a um.dummy run data get entity @s Motion[0] 5000
execute store result score b um.dummy run data get entity @s Motion[1] 5000
execute store result score c um.dummy run data get entity @s Motion[2] 5000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy