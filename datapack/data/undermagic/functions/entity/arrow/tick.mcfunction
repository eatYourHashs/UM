
execute if entity @s[tag=um.explosive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.explosive,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/denature

execute if entity @s[tag=um.dragons_proc] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.dragons_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/dragons_blast

execute if entity @s[tag=um.greatbow_proc] run function undermagic:entity/arrow/greatbow_shot
execute if entity @s[tag=um.split_shot] run particle smoke

execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 4.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak

scoreboard players add @s um.dummy 1
