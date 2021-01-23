scoreboard players set $math.in_0 um.dummy 40
execute if entity @p[tag=um.ar_helm] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.ar_chest] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.ar_legs] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.ar_boots] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.ar_stealth] run scoreboard players add $math.in_0 um.dummy 20
execute if entity @p[tag=um.primal] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.primal_spec] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.venom] run scoreboard players add $math.in_0 um.dummy 10
execute if entity @p[tag=um.acid] run scoreboard players add $math.in_0 um.dummy 20
execute if entity @p[tag=um.shadow] run scoreboard players add $math.in_0 um.dummy 30
execute if entity @p[tag=um.impact] run scoreboard players add $math.in_0 um.dummy 35
execute if entity @p[tag=um.hellfire] run scoreboard players add $math.in_0 um.dummy 25
execute if entity @p[tag=um.doom] run scoreboard players add $math.in_0 um.dummy 40
scoreboard players operation $math.in_0 um.dummy *= @s um.bfc_hits
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute as @s[tag=!global.ignore,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
scoreboard players set @s um.bfc_hits 0