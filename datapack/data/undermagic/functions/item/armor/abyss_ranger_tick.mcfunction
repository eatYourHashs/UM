execute if score @s um.sneak matches 1.. unless score @s um.ar_stealth matches 100.. run scoreboard players add @s um.ar_stealth 1
execute if score @s um.ar_stealth matches 100.. run effect give @s invisibility 2 0 true
execute if score @s um.ar_stealth matches 100.. run effect give @s speed 2 0 true
execute if score @s um.ar_stealth matches ..0 run scoreboard players set @s um.ar_stealth 0
execute if score @s um.deal_damage matches 1.. run scoreboard players set @s um.ar_stealth 0
execute if score @s um.bow_shot matches 1.. run scoreboard players remove @s um.ar_stealth 40
execute if score @s um.crossbow_shot matches 1.. run scoreboard players remove @s um.ar_stealth 40
effect clear @s blindness