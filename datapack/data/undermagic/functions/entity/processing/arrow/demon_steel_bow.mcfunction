
data merge entity @s {PierceLevel:1b}

execute store result score a um.dummy run data get entity @s Motion[0] 13000
execute store result score b um.dummy run data get entity @s Motion[1] 13000
execute store result score c um.dummy run data get entity @s Motion[2] 13000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute store success score success um.dummy run clear @p gunpowder 1
execute if score success um.dummy matches 1.. run tag @s add um_explosive
execute if score success um.dummy matches 1.. run tag @s add um_entity
execute if score success um.dummy matches 1.. run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1
execute if score success um.dummy matches 1.. run scoreboard players set success um.dummy 0
