scoreboard players add temp um.dummy 1
particle flame
tag @s add um.wielder
scoreboard players add @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] um.bfc_hits 1
execute if entity @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] run scoreboard players set temp um.dummy 41
execute if entity @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute if entity @e[type=#undermagic:attackable,distance=..2,tag=!um.wielder] run particle minecraft:explosion
execute unless score temp um.dummy matches 41.. positioned ^ ^ ^0.5 run function undermagic:item/weapon/bfc_9000_cast
execute if score temp um.dummy matches 41.. run scoreboard players set temp um.dummy 0
tag @s remove um.wielder