tag @s add um.wielder
scoreboard players add @s um.ws_cd 1
execute if score @s um.ws_cd matches -1 run effect clear @s weakness
execute if score @s um.ws_cd matches 0 run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.75
execute if score @s um.ws_cd matches 0 run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.75
execute if score @s um.ws_cd matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score @s um.ws_cd matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score @s um.ws_cd matches 0 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^3 ^2
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^2 ^3
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^ ^4
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle explosion ^ ^ ^4
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^-2 ^3
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^-3 ^2
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle crit ^ ^3 ^2 0.5 0.5 0.5 0.04 60
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle crit ^ ^2 ^3 0.5 0.5 0.5 0.04 60
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle crit ^ ^ ^4 0.5 0.5 0.5 0.04 60
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle crit ^ ^-2 ^3 0.5 0.5 0.5 0.04 60
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle crit ^ ^-3 ^2 0.5 0.5 0.5 0.04 60
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle flame ^ ^3 ^2 0.5 0.5 0.5 0.04 20
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle flame ^ ^2 ^3 0.5 0.5 0.5 0.04 20
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle flame ^ ^ ^4 0.5 0.5 0.5 0.04 20
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle flame ^ ^-2 ^3 0.5 0.5 0.5 0.04 20
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ run particle flame ^ ^-3 ^2 0.5 0.5 0.5 0.04 20
execute if score @s um.ws_cd matches 0 store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 20
execute if score @s um.ws_cd matches 0 run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.ws_cd matches 0 run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.ws_cd matches 0 run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ positioned ^ ^3 ^2 run tag @e[distance=..4,tag=!global.ignore,tag=!um.wielder] add um.hit
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ positioned ^ ^2 ^3 run tag @e[distance=..4,tag=!global.ignore,tag=!um.wielder] add um.hit
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ positioned ^ ^ ^4 run tag @e[distance=..4,tag=!global.ignore,tag=!um.wielder] add um.hit
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ positioned ^ ^-2 ^3 run tag @e[distance=..4,tag=!global.ignore,tag=!um.wielder] add um.hit
execute if score @s um.ws_cd matches 0 positioned ~ ~1.8 ~ positioned ^ ^-3 ^2 run tag @e[distance=..4,tag=!global.ignore,tag=!um.wielder] add um.hit
execute if score @s um.ws_cd matches 0 as @e[tag=um.hit] run function undermagic:utils/damage_entity
execute if score @s um.ws_cd matches 0 as @e[tag=um.hit] facing entity @a[tag=um.wielder,limit=1] feet run function undermagic:item/weapon/world_splitter_cleave_knockback
execute if score @s um.ws_cd matches 0 run function undermagic:player/reset_melee_effects
execute if score @s um.ws_cd matches 0 run scoreboard players set @s um.ws_combo 0
execute if score @s um.ws_cd matches 0 run scoreboard players set @s um.ws_cd 20
execute if score @s um.ws_cd matches 0 run tag @e remove um.hit
tag @s remove um.wielder
execute unless entity @s[nbt={SelectedItem:{tag:{um_id:"world_splitter"}}}] run scoreboard players set @s um.flare_cd 0