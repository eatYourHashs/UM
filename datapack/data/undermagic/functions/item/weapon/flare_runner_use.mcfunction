execute if score @s um.sneak matches 1.. run scoreboard players set @s um.flare_cd -20
execute if score @s um.sneak matches 1.. run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0.7
execute if score @s um.sneak matches 1.. run particle minecraft:dust 1 0.6 0 1.5 ~ ~0.1 ~ 0.2 0 0.2 0 30
execute if score @s um.sneak matches 1.. run particle minecraft:flame ~ ~0.1 ~ 0.2 0 0.2 0.05 10
execute if score @s um.sneak matches 1.. run effect give @s minecraft:weakness 1 100 true
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^1 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^1.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^2 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^2.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^3 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^3.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^4 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^4.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^5.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^6 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^6.5 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:flame ^ ^ ^7 0.1 0.1 0.1 0.03 10
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:sweep_attack ^ ^ ^4
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ run particle minecraft:sweep_attack ^ ^ ^7
execute unless score @s um.sneak matches 1.. run scoreboard players set @s um.flare_cd 30
execute unless score @s um.sneak matches 1.. run tag @s add um.user
execute unless score @s um.sneak matches 1.. store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 10
execute unless score @s um.sneak matches 1.. run scoreboard players set $math.in_1 um.dummy 0
execute unless score @s um.sneak matches 1.. run scoreboard players set $math.in_2 um.dummy 0
execute unless score @s um.sneak matches 1.. run scoreboard players set $math.in_3 um.dummy 0
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ positioned ^ ^ ^3 as @e[distance=..2,tag=!global.ignore,tag=!um.user] run function undermagic:utils/damage_entity
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ positioned ^ ^ ^4 as @e[distance=..2,tag=!global.ignore,tag=!um.user] run function undermagic:utils/damage_entity
execute unless score @s um.sneak matches 1.. positioned ~ ~1.8 ~ positioned ^ ^ ^5 as @e[distance=..2,tag=!global.ignore,tag=!um.user] run function undermagic:utils/damage_entity
execute unless score @s um.sneak matches 1.. run function undermagic:player/reset_melee_effects
execute unless score @s um.sneak matches 1.. run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8
execute unless score @s um.sneak matches 1.. run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute unless score @s um.sneak matches 1.. run tag @s remove um.user
#execute unless score @s um.sneak matches 1.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
#execute unless score @s um.sneak matches 1.. run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
#execute unless score @s um.sneak matches 1.. run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.flare_bolt"]}
#execute unless score @s um.sneak matches 1.. as @e[sort=nearest,limit=1,tag=um.flare_bolt] at @p positioned ~ ~1.8 ~ run tp ^ ^ ^1