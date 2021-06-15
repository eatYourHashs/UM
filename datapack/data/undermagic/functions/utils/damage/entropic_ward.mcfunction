execute at @s run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.6 1.2
execute at @s run particle minecraft:dust_color_transition 1 0.6 0 0.9 1 0 0 ~ ~1 ~ 0.4 0.5 0.4 1 300
scoreboard players operation @s um.ent_ward -= $math.in_0 um.dummy
execute if score @s um.ent_ward matches ..0 at @s run function undermagic:player/discharge_ward
scoreboard players set $math.in_0 um.dummy 0