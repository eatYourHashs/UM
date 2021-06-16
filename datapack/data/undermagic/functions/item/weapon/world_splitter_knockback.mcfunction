execute store result score $xm um.dummy run data get entity @s Motion[0] 10000
execute store result score $ym um.dummy run data get entity @s Motion[1] 10000
execute store result score $zm um.dummy run data get entity @s Motion[2] 10000
execute store result score $x1 um.dummy run data get entity @s Pos[0] 10000
execute store result score $y1 um.dummy run data get entity @s Pos[1] 10000
execute store result score $z1 um.dummy run data get entity @s Pos[2] 10000
tp ^ ^ ^-0.5
execute store result score $x2 um.dummy run data get entity @s Pos[0] 10000
execute store result score $y2 um.dummy run data get entity @s Pos[1] 10000
execute store result score $z2 um.dummy run data get entity @s Pos[2] 10000
tp ^ ^ ^0.5
scoreboard players operation $x1 um.dummy -= $x2 um.dummy
scoreboard players operation $y1 um.dummy -= $y2 um.dummy
scoreboard players operation $z1 um.dummy -= $z2 um.dummy
scoreboard players operation $xm um.dummy += $x1 um.dummy
scoreboard players operation $ym um.dummy += $y1 um.dummy
scoreboard players operation $zm um.dummy += $z1 um.dummy
scoreboard players add $ym um.dummy 7000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $xm um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $ym um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $zm um.dummy