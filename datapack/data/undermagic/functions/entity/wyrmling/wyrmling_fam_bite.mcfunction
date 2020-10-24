particle minecraft:dragon_breath ^ ^0.5 ^1 0 0 0 0.1 40
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_pit_lord_boss,distance=..3.5,tag=!um_untargetable] resistance 1 3 true
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_blood_minion,distance=..3.5] resistance 1 2 true
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_elder_hand,distance=..3.5] resistance 1 3 true
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_elder_eye,distance=..3.5,tag=!um_untargetable] resistance 1 2 true
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_shadesull_elder_hand,distance=..3.5] resistance 1 2 true
#execute if score difficulty um.dummy matches 1.. run effect give @e[tag=um_shadesull,distance=..3.5,tag=!um_untargetable] resistance 1 3 true
execute if score temp2 um.dummy matches 1..2 run scoreboard players set $math.in_0 um.dummy 60
execute if score temp2 um.dummy matches 3..5 run scoreboard players set $math.in_0 um.dummy 90
execute if score temp2 um.dummy matches 6..8 run scoreboard players set $math.in_0 um.dummy 120
execute if score temp2 um.dummy matches 9..10 run scoreboard players set $math.in_0 um.dummy 150
execute if score temp5 um.dummy matches 0 if score temp2 um.dummy matches 10 run scoreboard players set $math.in_0 um.dummy 60
execute as @e[type=#undermagic:hostile,sort=nearest,limit=1,type=!#undermagic:undead,distance=..3.5,tag=!um_untargetable] run function undermagic:utils/damage_entity
effect give @e[type=#undermagic:hostile,sort=nearest,limit=1] nausea 5 0
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 1.5
tp @s ~ ~1 ~
scoreboard players set @s um.dummy_two 1
execute if score temp5 um.dummy matches 0 if score temp2 um.dummy matches 10 run scoreboard players set @s um.dummy_two 190
execute as @a if score @s um.familiar_id = temp4 um.dummy run scoreboard players add @s um.wyrmling_xp 20