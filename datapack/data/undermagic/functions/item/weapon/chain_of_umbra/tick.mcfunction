execute at @a if score @s um.familiar_id = @p um.familiar_id positioned ~ ~1.3 ~ run function undermagic:item/weapon/chain_of_umbra/recur_extend
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.01 3
execute at @a if score @s um.familiar_id = @p um.familiar_id run tag @p add um_wielder
execute if entity @p[tag=um_wielder,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"chain_of_umbra"}}}] run kill @s
execute if score @s um.dummy matches 10.. if score $timer_20 um.dummy matches 2 run function undermagic:item/weapon/chain_of_umbra/shadow_burst
scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um_wielder] run function undermagic:utils/damage_entity
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um_wielder] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um_wielder] run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.5
execute if entity @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um_wielder] run kill @s
tag @a remove um_wielder
