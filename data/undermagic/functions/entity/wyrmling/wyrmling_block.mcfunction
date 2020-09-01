playsound minecraft:entity.zombie.attack_iron_door player @a ^ ^ ^ 1 1
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.3 300
execute as @e[type=arrow,distance=..4,tag=!um_deflected] at @s run function undermagic:draconic_reversal
execute as @a if score @s um.familiar_id = temp4 um.dummy run scoreboard players add @s um.wyrmling_xp 5