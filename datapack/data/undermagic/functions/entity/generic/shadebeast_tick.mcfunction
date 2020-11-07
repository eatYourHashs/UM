particle minecraft:portal ~ ~0.2 ~ 0.2 0.2 0.2 0.2 2
execute if entity @p[distance=..2.5] if entity @s[nbt={OnGround:1b},scores={um.dummy=..-5}] run effect give @s levitation 1 50 true
execute if entity @p[distance=..2.5] if entity @s[nbt={OnGround:1b},scores={um.dummy=..-5}] run scoreboard players set @s um.dummy 1
execute if entity @s[scores={um.dummy=..0}] run effect clear @s levitation
effect give @a[distance=..1,gamemode=!creative] blindness 3 0 true
scoreboard players remove @s um.dummy 1
execute store result score @s um.dummy_two run data get entity @s Health
execute if score @s um.dummy_two matches ..10 unless entity @s[tag=um.alpha_sb_processed] run scoreboard players add alpha_sb_spawn um.dummy 1
execute if score @s um.dummy_two matches ..10 run tag @s add um.alpha_sb_processed
execute if score alpha_sb_spawn um.dummy matches 5.. run function undermagic:entity/alpha_shadebeast/summon
