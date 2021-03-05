
execute if entity @s[tag=um.explosive] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.explosive,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/denature

execute if entity @s[tag=um.dragons_proc] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.dragons_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/dragons_blast

execute if entity @s[tag=um.shadow_proc] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.shadow_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/shadow_burst

execute if entity @s[tag=um.impact_proc] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.impact_proc] run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 0.2 1
execute if entity @s[tag=um.impact_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/impact

execute if entity @s[tag=um.hellfire_proc] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.hellfire_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/hellfire

execute if entity @s[tag=um.doom_proc] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.doom_proc] run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 0.2 1
execute if entity @s[tag=um.doom_proc,scores={um.dummy=2..},nbt=!{life:0s}] run function undermagic:entity/arrow/doom

execute if entity @s[tag=um.greatbow_proc] run function undermagic:entity/arrow/greatbow_shot
execute if entity @s[tag=um.split_shot] run particle smoke

execute if entity @s[tag=um.puncture_1_proc] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.puncture_2_proc] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.puncture_3_proc] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=um.puncture_4_proc] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1

execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 4.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak

scoreboard players add @s um.dummy 1
