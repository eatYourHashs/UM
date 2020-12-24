execute at @a if score @s um.familiar_id = @p um.familiar_id positioned ~ ~1.3 ~ run function undermagic:item/weapon/iron_whip/recur_extend
particle minecraft:block iron_block ~ ~ ~ 0.15 0.15 0.15 0 3
execute at @a if score @s um.familiar_id = @p um.familiar_id run tag @p add um.wielder
execute if entity @p[tag=um.wielder,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"iron_whip"}}}] run kill @s
scoreboard players set $math.in_0 um.dummy 80
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute at @a if score @s um.familiar_id = @p um.familiar_id if score @p um.ak_count matches 200.. as @p run function undermagic:item/armor/abyss_knight_reset
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run function undermagic:utils/damage_entity
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.5
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run kill @s
tag @a remove um.wielder