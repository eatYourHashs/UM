
execute store result score temp um.dummy run data get entity @s PierceLevel
scoreboard players add temp um.dummy 4
execute store result entity @s PierceLevel byte 1 run scoreboard players get temp um.dummy

execute store result score temp um.dummy run data get entity @s damage 10
execute if predicate undermagic:probability/0.2 run tag @s add um.crit
execute if entity @s[tag=um.crit] run playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.6
execute if entity @s[tag=um.crit] run scoreboard players operation temp um.dummy *= $cons.3 um.dummy
execute if entity @s[tag=um.crit] run scoreboard players operation temp um.dummy /= $cons.2 um.dummy
execute store result entity @s damage double 0.1 run scoreboard players get temp um.dummy

execute store result score a um.dummy run data get entity @s Motion[0] 10500
execute store result score b um.dummy run data get entity @s Motion[1] 10500
execute store result score c um.dummy run data get entity @s Motion[2] 10500
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
tag @s add um.puncture_2_proc
tag @s add um.entity
