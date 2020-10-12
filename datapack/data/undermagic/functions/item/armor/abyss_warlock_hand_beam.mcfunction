particle minecraft:end_rod
playsound minecraft:item.totem.use player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 2 true
effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 2 true
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:item/armor/abyss_warlock_hand_beam
execute if score temp um.dummy matches 201.. run scoreboard players set temp um.dummy 0
