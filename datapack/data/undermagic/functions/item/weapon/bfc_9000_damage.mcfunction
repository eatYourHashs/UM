scoreboard players set $math.in_0 um.dummy 40
scoreboard players operation $math.in_0 um.dummy *= @s um.bfc_hits
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute as @s[tag=!global.ignore,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
scoreboard players set @s um.bfc_hits 0