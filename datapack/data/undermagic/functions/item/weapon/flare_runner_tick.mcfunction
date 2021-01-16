scoreboard players add @s um.flare_cd 1
particle minecraft:dust 1 0.6 0 1.5 ~ ~0.1 ~ 0.2 0 0.2 1 2
execute if score @s um.flare_cd matches -1 run effect clear @s weakness
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 1
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
execute if score @s um.flare_cd matches 0 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~8 ~1.2 ~ 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~-8 ~1.2 ~ 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~ ~1.2 ~-8 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~ ~1.2 ~8 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~5 ~1.2 ~5 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~-5 ~1.2 ~-5 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~-5 ~1.2 ~5 0 0 0 1 1
execute if score @s um.flare_cd matches 0 run particle minecraft:sweep_attack ~5 ~1.2 ~-5 0 0 0 1 1
execute if score @s um.flare_cd matches 0 store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 20
execute if score @s um.flare_cd matches 0 run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.flare_cd matches 0 run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.flare_cd matches 0 run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.flare_cd matches 0 as @e[distance=0.1..8,tag=!global.ignore] run function undermagic:utils/damage_entity
execute if score @s um.flare_cd matches 0 run particle minecraft:flame ~ ~1.2 ~ 2.6 0 2.6 0.05 400
execute if score @s um.flare_cd matches 0 run scoreboard players set @s um.flare_cd 60
execute unless entity @s[nbt={SelectedItem:{tag:{um_id:"flare_runner"}}}] run scoreboard players set @s um.flare_cd 0