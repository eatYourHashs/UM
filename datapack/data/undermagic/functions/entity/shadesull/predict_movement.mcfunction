execute store result score x um.dummy run data get entity @s Pos[0] 1000
execute store result score xd um.dummy run data get entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[0] 1000
execute store result score y um.dummy run data get entity @s Pos[1] 1000
execute store result score yd um.dummy run data get entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[1] 1000
execute store result score z um.dummy run data get entity @s Pos[2] 1000
execute store result score zd um.dummy run data get entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[2] 1000
scoreboard players operation xd um.dummy -= x um.dummy
scoreboard players operation yd um.dummy -= y um.dummy
scoreboard players operation zd um.dummy -= z um.dummy
scoreboard players operation xd um.dummy *= $cons.3 um.dummy
scoreboard players operation yd um.dummy *= $cons.3 um.dummy
scoreboard players operation zd um.dummy *= $cons.3 um.dummy
scoreboard players operation x um.dummy += xd um.dummy
scoreboard players operation y um.dummy += yd um.dummy
scoreboard players operation z um.dummy += zd um.dummy
execute store result entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[0] float 0.001 run scoreboard players get x um.dummy
execute store result entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[1] float 0.001 run scoreboard players get y um.dummy
execute store result entity @e[tag=um_move_predict,limit=1,sort=nearest] Pos[2] float 0.001 run scoreboard players get z um.dummy