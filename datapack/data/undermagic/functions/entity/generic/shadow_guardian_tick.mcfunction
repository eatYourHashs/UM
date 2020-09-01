
execute if entity @s[tag=um_shadow_guardian] run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0 1
execute if entity @s[tag=um_shadow_guardian] facing entity @e[limit=1,sort=nearest,tag=um_guardian_target,distance=..10] feet run tp @s ^ ^ ^0.4
execute if entity @s[tag=um_shadow_guardian] run effect give @e[tag=um_guardian_target,type=!#undermagic:undead,distance=..1] instant_damage 1 1
execute if entity @s[tag=um_shadow_guardian] run effect give @e[tag=um_guardian_target,type=#undermagic:undead,distance=..1] instant_health 1 1
execute if entity @s[tag=um_shadow_guardian] run tag @e[tag=um_guardian_target,distance=..1] remove um_guardian_target
tag @s[tag=um_shadow_guardian] remove um_guardian_target
