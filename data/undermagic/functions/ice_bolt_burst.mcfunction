particle minecraft:item_snowball ~ ~ ~ 0 0 0 0.4 30
playsound minecraft:entity.guardian.hurt player @a ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 2
effect give @e[distance=..3,type=!player,type=!wither,tag=!um_lesser_demon,tag=!um_greater_demon] wither 4 5
effect give @e[distance=..3,type=player] instant_damage 1 2
effect give @e[distance=..3,type=wither] instant_health 1 1
effect give @e[distance=..3] slowness 5 3
effect give @e[distance=..3,tag=um_pit_lord_boss] instant_health 1 2
execute as @e[type=creeper,distance=..3] run data merge entity @s {Fuse:100,ignited:0b}
kill @e[distance=..3,tag=um_lesser_demon]
kill @e[distance=..3,tag=um_greater_demon]
kill @s
