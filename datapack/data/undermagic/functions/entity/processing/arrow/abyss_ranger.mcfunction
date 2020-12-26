
execute store result score a um.dummy run data get entity @s Motion[0] 11500
execute store result score b um.dummy run data get entity @s Motion[1] 11500
execute store result score c um.dummy run data get entity @s Motion[2] 11500
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger] run tag @s add um.abyss_ranger_proc
execute if entity @s[tag=um.abyss_ranger_proc] store result score dmg um.dummy run data get entity @s damage 10
execute if entity @s[tag=um.abyss_ranger_proc] run scoreboard players operation stealth_val um.dummy = @p um.ar_stealth
execute if entity @s[tag=um.abyss_ranger_proc] run scoreboard players operation stealth_val um.dummy /= five um.dummy
execute if entity @s[tag=um.abyss_ranger_proc] run scoreboard players operation dmg um.dummy += stealth_val um.dummy
execute if entity @s[tag=um.abyss_ranger_proc] store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
