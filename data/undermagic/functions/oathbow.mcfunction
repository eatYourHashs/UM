particle minecraft:end_rod
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
effect give @e[distance=..2,type=!#undermagic:undead,scores={um.oathbow_mark=1..},tag=!global.ignore] instant_damage 1 4 true
effect give @e[distance=..2,type=#undermagic:undead,scores={um.oathbow_mark=1..},tag=!global.ignore] instant_health 1 4 true
effect give @e[distance=..2,type=!#undermagic:undead,tag=!global.ignore] instant_damage 1 1 true
effect give @e[distance=..2,type=#undermagic:undead,tag=!global.ignore] instant_health 1 1 true
scoreboard players set @e[distance=..2,tag=!global.ignore] um.oathbow_mark 100
execute if entity @e[distance=..2,tag=!global.ignore,type=!player] run scoreboard players set temp um.dummy 202
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:oathbow
