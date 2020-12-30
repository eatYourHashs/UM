
execute store result score a um.dummy run data get entity @s Motion[0] 10000
execute store result score b um.dummy run data get entity @s Motion[1] 10000
execute store result score c um.dummy run data get entity @s Motion[2] 10000

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation a um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation a um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation b um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation b um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation c um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_helmet] run scoreboard players operation c um.dummy /= $cons.10 um.dummy

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation a um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation a um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation b um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation b um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation c um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_chestplate] run scoreboard players operation c um.dummy /= $cons.10 um.dummy

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation a um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation a um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation b um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation b um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation c um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_leggings] run scoreboard players operation c um.dummy /= $cons.10 um.dummy

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation a um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation a um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation b um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation b um.dummy /= $cons.10 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation c um.dummy *= $cons.11 um.dummy
execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger_boots] run scoreboard players operation c um.dummy /= $cons.10 um.dummy

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy

execute if entity @p[distance=..2,predicate=undermagic:armor_sets/abyss_ranger] run tag @s add um.abyss_ranger_proc
execute if entity @s[tag=um.abyss_ranger_proc] store result score dmg um.dummy run data get entity @s damage 10
execute if entity @s[tag=um.abyss_ranger_proc] run scoreboard players operation stealth_val um.dummy = @p um.ar_stealth
execute if entity @s[tag=um.abyss_ranger_proc] run scoreboard players operation dmg um.dummy += stealth_val um.dummy
execute if entity @s[tag=um.abyss_ranger_proc] store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
