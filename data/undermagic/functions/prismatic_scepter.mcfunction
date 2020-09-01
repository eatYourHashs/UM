particle minecraft:end_rod
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 0 true
effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 0 true
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:prismatic_scepter
