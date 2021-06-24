execute at @a if score @s um.familiar_id = @p um.familiar_id positioned ~ ~1.3 ~ run function undermagic:item/weapon/lashes_of_light/recur_extend
particle minecraft:flame ~ ~ ~ 0.15 0.15 0.15 0.03 3
execute at @a if score @s um.familiar_id = @p um.familiar_id run tag @p add um.wielder
execute if entity @p[tag=um.wielder,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"lashes_of_light"}}}] run kill @s
execute as @a[tag=um.wielder] store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 10
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if entity @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] at @a if score @s um.familiar_id = @p um.familiar_id as @p run function undermagic:player/reset_melee_effects
execute as @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run function undermagic:utils/damage_entity
execute if entity @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute if entity @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.5
execute if entity @e[type=#undermagic:attackable,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run kill @s
tag @a remove um.wielder
