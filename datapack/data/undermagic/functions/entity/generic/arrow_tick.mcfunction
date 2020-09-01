
execute if entity @s[tag=um_explosive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um_dragons_proc] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um_dragons_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:arrow_dragons_blast
execute if entity @s[tag=um_explosive,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:arrow_denature
execute if entity @s[tag=um_split_shot] run particle smoke
scoreboard players add @s um.dummy 1
