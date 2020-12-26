execute store result score a um.dummy run data get entity @s Motion[0] 7000
execute store result score b um.dummy run data get entity @s Motion[1] 7000
execute store result score c um.dummy run data get entity @s Motion[2] 7000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 30
data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:0b,Duration:200}
data modify entity @s CustomPotionEffects append value {Id:19b,Amplifier:0b,Duration:200}
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
