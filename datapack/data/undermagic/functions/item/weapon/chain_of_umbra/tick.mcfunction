execute at @a if score @s um.familiar_id = @p um.familiar_id positioned ~ ~1.3 ~ run function undermagic:item/weapon/chain_of_umbra/recur_extend
execute at @a if score @s um.familiar_id = @p um.familiar_id store result score temp0 um.dummy run attribute @s minecraft:generic.attack_damage get 10
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.01 3
execute at @a if score @s um.familiar_id = @p um.familiar_id run tag @p add um.wielder
execute if entity @p[tag=um.wielder,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"chain_of_umbra"}}}] run kill @s
execute if score @s um.dummy matches 10.. if score $timer_20 um.dummy matches 2 run function undermagic:item/weapon/chain_of_umbra/shadow_burst
scoreboard players set $math.in_0 um.dummy 400
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
scoreboard players operation temp0 um.dummy *= $cons.2 um.dummy
scoreboard players operation $math.in_0 um.dummy += temp0 um.dummy
execute at @a if score @s um.familiar_id = @p um.familiar_id if score @p um.ak_count matches 200.. as @p run function undermagic:item/armor/abyss_knight_reset
execute as @e[type=#undermagic:hostile,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run function undermagic:utils/damage_entity
execute if entity @e[type=#undermagic:hostile,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute if entity @e[type=#undermagic:hostile,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.5
execute if entity @e[type=#undermagic:hostile,tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.wielder] run kill @s
tag @a remove um.wielder
