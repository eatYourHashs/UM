particle minecraft:block diamond_block ~ ~ ~ 0 0 0 0 10
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.bat.death player @a ~ ~ ~ 0.5 2
scoreboard players add temp um.dummy 1
effect give @e[distance=..2,tag=!um_undead] instant_damage 1 1 true
effect give @e[distance=..2,tag=um_undead] instant_health 1 1 true
execute unless score temp um.dummy matches 301.. positioned ^ ^ ^0.5 run function undermagic:diamond_piercer
scoreboard players set @s um.orb_cooldown 60
