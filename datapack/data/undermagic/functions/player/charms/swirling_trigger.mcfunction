playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 0.5
particle minecraft:cloud ~ ~0.5 ~ 0.5 0.1 0.5 0.1 100
execute if score @s um.swirl_charms matches 1 run effect give @e[type=#undermagic:attackable,distance=..5] minecraft:levitation 1 9
execute if score @s um.swirl_charms matches 2 run effect give @e[type=#undermagic:attackable,distance=..5] minecraft:levitation 1 14
execute if score @s um.swirl_charms matches 3 run effect give @e[type=#undermagic:attackable,distance=..5] minecraft:levitation 1 19
execute if score @s um.swirl_charms matches 4.. run effect give @e[type=#undermagic:attackable,distance=..5] minecraft:levitation 1 24