summon wither_skull ^ ^1 ^4 {direction:[0.0d,0.0d,0.0d],Tags:["global.ignore","um.entity","um.skullshot"]}
execute as @e[sort=nearest,limit=1,tag=um.skullshot] positioned ^ ^1 ^-6 facing entity @p eyes run tp ^ ^ ^6
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 1
scoreboard players set @s um.orb_cooldown 10
execute store result score x_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[0] 100
execute store result score y_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[1] 100
execute store result score z_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[2] 100
execute as @e[sort=nearest,limit=1,tag=um.skullshot] at @s run tp ^ ^ ^2
execute store result score x_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[0] 100
execute store result score y_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[1] 100
execute store result score z_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um.skullshot] Pos[2] 100
scoreboard players operation x_delta um.dummy -= x_new um.dummy
scoreboard players operation y_delta um.dummy -= y_new um.dummy
scoreboard players operation z_delta um.dummy -= z_new um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um.skullshot] direction[0] double -0.01 run scoreboard players get x_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um.skullshot] direction[1] double -0.01 run scoreboard players get y_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um.skullshot] direction[2] double -0.01 run scoreboard players get z_delta um.dummy
