playsound minecraft:entity.zombie.attack_iron_door player @a ^ ^ ^ 1 0.5
playsound minecraft:entity.blaze.ambient player @a ^ ^1 ^2 1 2
particle minecraft:smoke ^ ^1 ^1 0 0 0 0.02 50
particle minecraft:smoke ^ ^1 ^2 0 0 0 0.03 50
particle minecraft:smoke ^ ^1 ^3 0 0 0 0.04 50
particle minecraft:smoke ^ ^1 ^4 0 0 0 0.05 50
particle minecraft:smoke ^ ^1 ^5 0 0 0 0.06 50
execute positioned ^ ^1 ^4 run tag @e[distance=..4,type=#undermagic:attackable,tag=!global.ignore] add um.guardian_target