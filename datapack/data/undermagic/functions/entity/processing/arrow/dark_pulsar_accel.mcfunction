
execute store result score a um.dummy run data get entity @s Motion[0] 170000
execute store result score b um.dummy run data get entity @s Motion[1] 170000
execute store result score c um.dummy run data get entity @s Motion[2] 170000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
tag @s add um.pulsar_accel
particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 10
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1.6