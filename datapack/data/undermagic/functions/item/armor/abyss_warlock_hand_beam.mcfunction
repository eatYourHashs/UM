particle minecraft:end_rod
playsound minecraft:item.totem.use player @a ~ ~ ~ 0.2 2
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,distance=..2,scores={um.aw_mark=1..,um.invuln=10..}] run function undermagic:utils/damage_entity
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:item/armor/abyss_warlock_hand_beam
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0
