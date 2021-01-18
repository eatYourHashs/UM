scoreboard players add temp um.dummy 1
particle flame
scoreboard players add @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] um.bfc_hits 1
execute if entity @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] run scoreboard players set temp um.dummy 41
execute if entity @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
scoreboard players set $math.in_0 um.dummy 180
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 2
scoreboard players set $math.in_3 um.dummy 0
execute as @a[distance=..1] run function undermagic:utils/damage_entity
execute if entity @a[distance=..1] run scoreboard players set temp um.dummy 61
execute if entity @a[distance=..1] run particle minecraft:explosion
execute unless score temp um.dummy matches 61.. positioned ^ ^ ^0.5 run function undermagic:entity/rahthor/cast
execute if score temp um.dummy matches 61.. run scoreboard players set temp um.dummy 0
tag @s remove um.wielder