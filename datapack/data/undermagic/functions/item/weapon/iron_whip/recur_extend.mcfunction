execute if score temp um.dummy matches 2.. run particle block chain
tp ~ ~ ~
scoreboard players add temp um.dummy 1
execute at @a if score @s um.familiar_id = @p um.familiar_id run tag @p add um.wielder
execute if score @s um.dummy matches 10.. as @a[tag=um.wielder] store result score $math.in_0 um.dummy run attribute @s minecraft:generic.attack_damage get 5
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_1 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_2 um.dummy 0
execute if score @s um.dummy matches 10.. run scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.dummy matches 10.. as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..1,tag=!um.wielder] run function undermagic:utils/damage_entity
execute if score temp um.dummy < @s um.dummy positioned ^ ^ ^1 run function undermagic:item/weapon/iron_whip/recur_extend
execute if score temp um.dummy >= @s um.dummy run scoreboard players set temp um.dummy 0
tag @a remove um.wielder
