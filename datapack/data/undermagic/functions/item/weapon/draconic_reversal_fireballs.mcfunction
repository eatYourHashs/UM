execute store result score x_vel um.dummy run data get entity @s direction[0] -1500
execute store result score y_vel um.dummy run data get entity @s direction[1] -1500
execute store result score z_vel um.dummy run data get entity @s direction[2] -1500
execute store result entity @s direction[0] double 0.001 run scoreboard players get x_vel um.dummy
execute store result entity @s direction[1] double 0.001 run scoreboard players get y_vel um.dummy
execute store result entity @s direction[2] double 0.001 run scoreboard players get z_vel um.dummy
execute store result entity @s power[0] double 0.0003 run scoreboard players get x_vel um.dummy
execute store result entity @s power[1] double 0.0003 run scoreboard players get y_vel um.dummy
execute store result entity @s power[2] double 0.0003 run scoreboard players get z_vel um.dummy
tp @s ~ ~-1 ~
tag @s add um.deflected