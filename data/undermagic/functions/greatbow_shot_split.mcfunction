summon arrow ^0.8 ^ ^-0.3 {pickup:2b,crit:0b,ShotFromCrossbow:0b,PierceLevel:0b,Tags:["um_processed","um_split_shot"]}
summon arrow ^-0.8 ^ ^-0.3 {pickup:2b,crit:0b,ShotFromCrossbow:0b,PierceLevel:0b,Tags:["um_processed","um_split_shot"]}
summon arrow ^1.6 ^ ^-0.6 {pickup:2b,crit:0b,ShotFromCrossbow:0b,PierceLevel:0b,Tags:["um_processed","um_split_shot"]}
summon arrow ^-1.6 ^ ^-0.6 {pickup:2b,crit:0b,ShotFromCrossbow:0b,PierceLevel:0b,Tags:["um_processed","um_split_shot"]}
execute store result score a um.dummy run data get entity @s Motion[0] 10000
execute store result score b um.dummy run data get entity @s Motion[1] 10000
execute store result score c um.dummy run data get entity @s Motion[2] 10000
execute as @e[distance=..2,tag=um_split_shot] at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute as @e[distance=..2,tag=um_split_shot] at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute as @e[distance=..2,tag=um_split_shot] at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute store result score dmg um.dummy run data get entity @s damage 10
execute as @e[distance=..2,tag=um_split_shot] at @s store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
particle smoke ~ ~ ~ 0 0 0 0.1 30
