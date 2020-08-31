particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.2 5
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 0.3 1
scoreboard players add temp um.dummy 1
effect give @e[distance=..2,tag=!um_undead] instant_damage 1 2 true
effect give @e[distance=..2,tag=um_undead] instant_health 1 2 true
scoreboard players set @e[distance=..2] um.aw_mark 100
execute unless score temp um.dummy matches 201.. positioned ^ ^ ^0.5 run function undermagic:doom_desire
