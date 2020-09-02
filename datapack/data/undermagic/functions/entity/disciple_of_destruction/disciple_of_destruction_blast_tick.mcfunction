tp @s ^ ^ ^0.6
particle minecraft:flame ^ ^1 ^2 0.2 0.2 0.2 0 50
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=200..}] run kill @s
execute if entity @p[distance=..2] run effect give @p instant_damage 1 3
execute unless block ~ ~ ~ air run function undermagic:entity/disciple_of_destruction/disciple_of_destruction_blast_explode