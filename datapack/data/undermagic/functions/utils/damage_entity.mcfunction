
# $math.in_0 um.dummy: damage to add to entity, to 1 decimal place
# $math.in_1 um.dummy: 1 if should ignore armor, 2 if should ignore armor + enchants, 3 if should ignore armor, enchants, and resistance
# Note: enchantments are currently not implemented
# Note 2: not always accurate on wither skeleton, wither, and ender dragon

#calculate armor redux
execute store result score $math.temp_0 um.dummy run attribute @s minecraft:generic.armor get 10
execute store result score $math.temp_1 um.dummy run attribute @s minecraft:generic.armor_toughness get 10

scoreboard players operation $math.temp_2 um.dummy = $math.temp_0 um.dummy
scoreboard players operation $math.temp_2 um.dummy /= $cons.5 um.dummy

scoreboard players operation $math.temp_3 um.dummy = $math.temp_0 um.dummy
scoreboard players operation $math.temp_4 um.dummy = $math.in_0 um.dummy
scoreboard players operation $math.temp_5 um.dummy = $math.temp_1 um.dummy
scoreboard players operation $math.temp_5 um.dummy /= $cons.4 um.dummy
scoreboard players add $math.temp_5 um.dummy 2
scoreboard players operation $math.temp_4 um.dummy /= $math.temp_5 um.dummy
scoreboard players operation $math.temp_3 um.dummy -= $math.temp_4 um.dummy

execute if score $math.temp_3 um.dummy > $math.temp_2 um.dummy run scoreboard players operation $math.temp_2 um.dummy = $math.temp_3 um.dummy
execute if score $math.temp_2 um.dummy matches 200.. run scoreboard players set $math.temp_2 um.dummy 200
scoreboard players operation $math.temp_2 um.dummy *= $cons.10 um.dummy
scoreboard players operation $math.temp_2 um.dummy /= $cons.25 um.dummy
scoreboard players set $math.out_0 um.dummy 100
scoreboard players operation $math.out_0 um.dummy -= $math.temp_2 um.dummy

execute if score $math.in_1 um.dummy matches 0 run scoreboard players operation $math.out_0 um.dummy *= $math.in_0 um.dummy
execute if score $math.in_1 um.dummy matches 0 run scoreboard players operation $math.out_0 um.dummy /= $cons.100 um.dummy
execute if score $math.in_1 um.dummy matches 1..3 run scoreboard players operation $math.out_0 um.dummy = $math.in_0 um.dummy

#apply resistance
execute store result score $math.temp_0 um.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $math.temp_0 um.dummy 1

execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players set $math.temp_1 um.dummy 5
execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.temp_1 um.dummy -= $math.temp_0 um.dummy

execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.out_0 um.dummy *= $math.temp_1 um.dummy
execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.out_0 um.dummy /= $cons.5 um.dummy

#modify health
execute store result score $math.out_1 um.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score $math.temp_1 um.dummy run data get entity @s Health 10

effect give @s minecraft:wither 1 1 true
execute unless score $math.temp_1 um.dummy matches ..15 run effect give @s[type=#undermagic:undead] minecraft:instant_damage 1 0 true
execute unless score $math.temp_1 um.dummy matches ..15 run effect give @s[type=!#undermagic:undead] minecraft:instant_health 1 0 true

scoreboard players operation $math.temp_0 um.dummy = $math.out_1 um.dummy
scoreboard players operation $math.temp_1 um.dummy -= $math.out_0 um.dummy
scoreboard players operation $math.temp_0 um.dummy -= $math.temp_1 um.dummy

tag @s add um_damage_reset
schedule function undermagic:utils/damage/damage_reset 1t
execute if score $math.temp_0 um.dummy >= $math.out_1 um.dummy run kill @s

execute if score $timer_10 um.dummy matches 0 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_0
execute if score $timer_10 um.dummy matches 1 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_1
execute if score $timer_10 um.dummy matches 2 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_2
execute if score $timer_10 um.dummy matches 3 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_3
execute if score $timer_10 um.dummy matches 4 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_4
execute if score $timer_10 um.dummy matches 5 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_5
execute if score $timer_10 um.dummy matches 6 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_6
execute if score $timer_10 um.dummy matches 7 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_7
execute if score $timer_10 um.dummy matches 8 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_8
execute if score $timer_10 um.dummy matches 9 if entity @s[tag=um_damage_reset] run function undermagic:utils/damage/apply_damage_9

