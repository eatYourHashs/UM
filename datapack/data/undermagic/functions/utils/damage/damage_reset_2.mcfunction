

execute store result score $math.temp_0 um.dummy run data get entity @s Health 10
scoreboard players remove $math.temp_0 um.dummy 1
execute store result score $math.temp_1 um.dummy run attribute @s minecraft:generic.max_health get 10

execute if score $math.temp_0 um.dummy <= $math.temp_1 um.dummy run function undermagic:utils/damage/damage_reset_3
execute if score $math.temp_0 um.dummy > $math.temp_1 um.dummy run schedule function undermagic:utils/damage/damage_reset 1t
