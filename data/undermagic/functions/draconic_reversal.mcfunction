execute store result score x_vel um.dummy run data get entity @s Motion[0] -1500
execute store result score y_vel um.dummy run data get entity @s Motion[1] -1500
execute store result score z_vel um.dummy run data get entity @s Motion[2] -1500
execute store result entity @s Motion[0] double 0.001 run scoreboard players get x_vel um.dummy
execute store result entity @s Motion[1] double 0.001 run scoreboard players get y_vel um.dummy
execute store result entity @s Motion[2] double 0.001 run scoreboard players get z_vel um.dummy
tp @s ~ ~-1 ~
tag @s add um_deflected