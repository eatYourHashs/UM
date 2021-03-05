
execute store result score a um.dummy run data get entity @s Motion[0] 1000
execute store result score b um.dummy run data get entity @s Motion[1] 1000
execute store result score c um.dummy run data get entity @s Motion[2] 1000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
tag @s add um.pulsar_proc
tag @s add um.entity
data merge entity @s {NoGravity:1b}