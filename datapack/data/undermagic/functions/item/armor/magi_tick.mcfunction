execute if score @s um.magi_cd matches 1 run effect give @s minecraft:absorption 1000000 4 true
execute if score @s um.magi_cd matches 1 run tag @s remove um.magi_break
execute if score @s um.magi_cd matches 1 run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.5
execute if score @s um.magi_cd matches 1 run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 0.4 0.2 0.2 100
execute unless score @s um.magi_cd matches 0.. run scoreboard players set @s um.magi_cd 2
execute if score @s um.magi_cd matches 1.. run scoreboard players remove @s um.magi_cd 1
execute if score @s um.magi_cd matches 0 if entity @s[nbt=!{AbsorptionAmount:20.0f}] run scoreboard players set @s um.magi_cd 600
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!um.magi_break] run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 0.5
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!um.magi_break] run playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 1 1
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!um.magi_break] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.2 100
execute if entity @s[nbt={AbsorptionAmount:0.0f},tag=!um.magi_break] run tag @s add um.magi_break

