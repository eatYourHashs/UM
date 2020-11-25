particle minecraft:block diamond_block ~ ~ ~ 0 0 0 0 10
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.bat.death player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
scoreboard players set $math.in_0 um.dummy 150
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2] run function undermagic:utils/damage_entity
execute unless score temp um.dummy matches 301.. positioned ^ ^ ^0.5 run function undermagic:item/weapon/diamond_piercer
execute if score temp um.dummy matches 301.. run scoreboard players remove @s um.mana 60
execute if score temp um.dummy matches 301.. run scoreboard players set @s um.mana_cd 0
execute if score temp um.dummy matches 301.. run scoreboard players set temp um.dummy 0
