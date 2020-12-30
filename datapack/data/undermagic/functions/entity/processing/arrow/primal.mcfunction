
execute store result score a um.dummy run data get entity @s Motion[0] 10500
execute store result score b um.dummy run data get entity @s Motion[1] 10500
execute store result score c um.dummy run data get entity @s Motion[2] 10500
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy

execute if entity @p[distance=..2,scores={um.primal_chg=1..}] run tag @s add um.primal_proc
execute if entity @s[tag=um.primal_proc] store result score dmg um.dummy run data get entity @s damage 10
execute if entity @s[tag=um.primal_proc] run scoreboard players add dmg um.dummy 40
execute if entity @s[tag=um.primal_proc] run scoreboard players remove @p[distance=..2,scores={um.primal_chg=1..}] um.primal_chg 1
execute if entity @s[tag=um.primal_proc] run playsound minecraft:entity.spider.death player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.primal_proc] store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
