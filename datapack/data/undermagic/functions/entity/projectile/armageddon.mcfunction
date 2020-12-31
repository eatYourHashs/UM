scoreboard players add @s um.dummy 1
execute unless entity @s[tag=um.arma_hit] run tp @s ^ ^ ^1
execute unless entity @s[tag=um.arma_hit] run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 30
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 5 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 10 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.75
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 15 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 20.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 1..19 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 20
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 20.. run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 50
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 100 run particle minecraft:flame ~ ~ ~ 0 0 0 0.7 1000
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 100 run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 30
scoreboard players set $math.in_0 um.dummy 150
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 1
scoreboard players set $math.in_3 um.dummy 0
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 20 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 30 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 40 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 50 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 60 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 70 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 80 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 90 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..3] run function undermagic:utils/damage_entity
scoreboard players set $math.in_0 um.dummy 300
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 100 as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..4] run function undermagic:utils/damage_entity
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 20 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 30 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 40 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 50 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 60 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 70 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 80 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 90 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 100 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if entity @s[tag=um.arma_hit] if score @s um.dummy matches 100 run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 100.. run kill @s
execute unless entity @s[tag=um.arma_hit] if score @s um.dummy matches 5.. if entity @e[type=#undermagic:attackable,tag=!global.ignore,distance=..3] run function undermagic:item/weapon/armageddon/hit