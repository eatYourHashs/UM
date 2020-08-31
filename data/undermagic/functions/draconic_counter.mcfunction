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
effect give @e[tag=!um_undead,distance=1..8] instant_damage 1 1
effect give @e[tag=um_undead,distance=..8] instant_health 1 1
scoreboard players remove @s um.drac_sh_chg 1