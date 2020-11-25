playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.attack_iron_door player @a ^ ^ ^ 1 1
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.5 1000
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.3 500
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.2 300
particle minecraft:explosion_emitter
execute as @e[tag=!global.ignore,distance=1..8] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
execute as @e[tag=!global.ignore,distance=1..8] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
execute as @e[tag=!global.ignore,distance=1..8] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
execute as @e[tag=!global.ignore,distance=1..8] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
scoreboard players set $math.in_0 um.dummy 190
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 3
scoreboard players set $math.in_3 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=0.05..8] run function undermagic:utils/damage_entity
scoreboard players remove @s um.drac_sh_chg 1