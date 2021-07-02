particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.05 4
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.25 1
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 1000
execute if entity @s[tag=um.ar_helm] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.ar_chest] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.ar_legs] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.ar_boots] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.ar_stealth] run scoreboard players add $math.in_0 um.dummy 500
execute if entity @s[tag=um.primal] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.primal_spec] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.venom] run scoreboard players add $math.in_0 um.dummy 250
execute if entity @s[tag=um.acid] run scoreboard players add $math.in_0 um.dummy 500
execute if entity @s[tag=um.shadow] run scoreboard players add $math.in_0 um.dummy 750
execute if entity @s[tag=um.impact] run scoreboard players add $math.in_0 um.dummy 875
execute if entity @s[tag=um.hellfire] run scoreboard players add $math.in_0 um.dummy 625
execute if entity @s[tag=um.doom] run scoreboard players add $math.in_0 um.dummy 600
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if entity @e[distance=..2,tag=!global.ignore,type=!player] run scoreboard players set temp um.dummy 202
execute if entity @e[distance=..2,tag=!global.ignore,type=!player] run particle explosion_emitter
execute if entity @e[distance=..2,tag=!global.ignore,type=!player] as @e[tag=!global.ignore,distance=..5,scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:entity/projectile/annihilations_gaze_supercharge
