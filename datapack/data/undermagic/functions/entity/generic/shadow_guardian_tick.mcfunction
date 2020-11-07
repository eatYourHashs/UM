
execute if entity @s[tag=um.shadow_guardian] run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0 1
execute if entity @s[tag=um.shadow_guardian] facing entity @e[limit=1,sort=nearest,tag=um.guardian_target,distance=..10] feet run tp @s ^ ^ ^0.4
execute if entity @s[tag=um.shadow_guardian] run scoreboard players set $math.in_0 um.dummy 80
execute if entity @s[tag=um.shadow_guardian] run scoreboard players set $math.in_1 um.dummy 0
execute if entity @s[tag=um.shadow_guardian] run scoreboard players set $math.in_2 um.dummy 0
execute if entity @s[tag=um.shadow_guardian] as @e[tag=!global.ignore,scores={um.invuln=10..},tag=um.guardian_target,distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.shadow_guardian] run tag @e[tag=um.guardian_target,distance=..1] remove um.guardian_target
tag @s[tag=um.shadow_guardian] remove um.guardian_target
