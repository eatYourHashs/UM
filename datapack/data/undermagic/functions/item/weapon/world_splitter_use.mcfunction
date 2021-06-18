tag @s add um.wielder
execute if score @s um.ws_combo matches 2 unless score @s um.ws_cd matches ..-1 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.6
execute if score @s um.ws_combo matches 2 unless score @s um.ws_cd matches ..-1 run particle minecraft:flame ^ ^1.5 ^2 0.1 0.1 0.1 0.03 40
execute if score @s um.ws_combo matches 2 unless score @s um.ws_cd matches ..-1 run effect give @s minecraft:weakness 1 100 true
execute if score @s um.ws_combo matches 2 unless score @s um.ws_cd matches ..-1 run scoreboard players set @s um.ws_cd -20
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle sweep_attack ^2 ^ ^3
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle sweep_attack ^-2 ^ ^3
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle sweep_attack ^3 ^ ^2
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle sweep_attack ^-3 ^ ^2
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle sweep_attack ^ ^ ^4
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle crit ^2 ^ ^3 0.5 0.5 0.5 0 60
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle crit ^-2 ^ ^3 0.5 0.5 0.5 0 60
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle crit ^ ^ ^4 0.5 0.5 0.5 0 60
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle flame ^2 ^ ^3 0.5 0.5 0.5 0.04 10
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle flame ^-2 ^ ^3 0.5 0.5 0.5 0.04 10
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ run particle flame ^ ^ ^4 0.5 0.5 0.5 0.04 10
execute unless score @s um.ws_combo matches 2 run scoreboard players set @s um.ws_cd 20
execute unless score @s um.ws_combo matches 2 store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 10
execute unless score @s um.ws_combo matches 2 run scoreboard players set $math.in_1 um.dummy 0
execute unless score @s um.ws_combo matches 2 run scoreboard players set $math.in_2 um.dummy 0
execute unless score @s um.ws_combo matches 2 run scoreboard players set $math.in_3 um.dummy 0
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ positioned ^2 ^ ^3 run tag @e[distance=..3,tag=!global.ignore,tag=!um.wielder] add um.hit
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ positioned ^ ^ ^4 run tag @e[distance=..3,tag=!global.ignore,tag=!um.wielder] add um.hit
execute unless score @s um.ws_combo matches 2 positioned ~ ~1.8 ~ positioned ^-2 ^ ^3 run tag @e[distance=..3,tag=!global.ignore,tag=!um.wielder] add um.hit
execute unless score @s um.ws_combo matches 2 as @e[tag=um.hit] run function undermagic:utils/damage_entity
execute unless score @s um.ws_combo matches 2 as @e[tag=um.hit] facing entity @a[tag=um.wielder,limit=1] feet run function undermagic:item/weapon/world_splitter_knockback
execute unless score @s um.ws_combo matches 2 run function undermagic:player/reset_melee_effects
execute unless score @s um.ws_combo matches 2 run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.75
execute unless score @s um.ws_combo matches 2 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute unless score @s um.ws_combo matches 2 run scoreboard players add @s um.ws_combo 1
#execute unless score @s um.ws_combo matches 2 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
#execute unless score @s um.ws_combo matches 2 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
#execute unless score @s um.ws_combo matches 2 run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.flare_bolt"]}
#execute unless score @s um.ws_combo matches 2 as @e[sort=nearest,limit=1,tag=um.flare_bolt] at @p positioned ~ ~1.8 ~ run tp ^ ^ ^1
execute unless score @s um.ws_combo matches 2 run tag @e remove um.hit
tag @s remove um.wielder