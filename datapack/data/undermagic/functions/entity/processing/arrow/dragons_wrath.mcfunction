
tag @s add um_dragons_proc
tag @s add um_entity

data merge entity @s {PierceLevel:1b}

execute store result score a um.dummy run data get entity @s Motion[0] 16000
execute store result score b um.dummy run data get entity @s Motion[1] 16000
execute store result score c um.dummy run data get entity @s Motion[2] 16000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @p[scores={um.dragon_energy=60..}] run function undermagic:entity/projectile/dragon_special_summon
playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~
