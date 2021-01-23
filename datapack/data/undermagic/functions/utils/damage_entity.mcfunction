
# $math.in_0 um.dummy: damage to add to entity, to 1 decimal place
# $math.in_1 um.dummy: 1 if should ignore armor, 2 if should ignore armor + enchants, 3 if should ignore armor, enchants, and resistance
# $math.in_2 um.dummy: 1 for fire damage, 2 for projectile damage, 3 for blast damage (only relevant if enchantments are not ignored)
# $math.in_3 um.dummy: minimum damage to 1 decimal place
# Note: not always accurate on wither and ender dragon

#special fire DR items

execute if score $math.in_2 um.dummy matches 1 if entity @s[type=player,nbt={Inventory:[{Slot:-106b,tag:{um_id:"flarium_aegis"}}]}] run scoreboard players operation $math.in_0 um.dummy *= $cons.3
execute if score $math.in_2 um.dummy matches 1 if entity @s[type=player,nbt={Inventory:[{Slot:-106b,tag:{um_id:"flarium_aegis"}}]}] run scoreboard players operation $math.in_0 um.dummy /= $cons.4
execute if score $math.in_2 um.dummy matches 1 if entity @s[type=player,nbt={Inventory:[{Slot:-106b,tag:{um_id:"infernal_soul_aegis"}}]}] run scoreboard players operation $math.in_0 um.dummy /= $cons.2
execute if score $math.in_2 um.dummy matches 1 if entity @s[type=player,nbt={Inventory:[{Slot:102b,tag:{um_id:"pit_lord_chestplate"}}]}] run scoreboard players operation $math.in_0 um.dummy *= $cons.3
execute if score $math.in_2 um.dummy matches 1 if entity @s[type=player,nbt={Inventory:[{Slot:102b,tag:{um_id:"pit_lord_chestplate"}}]}] run scoreboard players operation $math.in_0 um.dummy /= $cons.4

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

#apply enchs
execute store result score $math.temp_0 um.dummy run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl 4
execute store result score $math.temp_1 um.dummy run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl 4
execute store result score $math.temp_2 um.dummy run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl 4
execute store result score $math.temp_3 um.dummy run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl 4

execute if score $math.in_2 um.dummy matches 1 run function undermagic:utils/damage/calc_fireprot
execute if score $math.in_2 um.dummy matches 2 run function undermagic:utils/damage/calc_projprot
execute if score $math.in_2 um.dummy matches 3 run function undermagic:utils/damage/calc_blastprot

scoreboard players operation $math.temp_0 um.dummy += $math.temp_1
scoreboard players operation $math.temp_0 um.dummy += $math.temp_2
scoreboard players operation $math.temp_0 um.dummy += $math.temp_3
scoreboard players operation $math.temp_0 um.dummy += $math.temp_4
scoreboard players operation $math.temp_0 um.dummy += $math.temp_5
scoreboard players operation $math.temp_0 um.dummy += $math.temp_6
scoreboard players operation $math.temp_0 um.dummy += $math.temp_7
scoreboard players set $math.temp_1 um.dummy 100
scoreboard players operation $math.temp_1 um.dummy -= $math.temp_0

execute if score $math.in_1 um.dummy matches 0..1 run scoreboard players operation $math.out_0 um.dummy *= $math.temp_1 um.dummy
execute if score $math.in_1 um.dummy matches 0..1 run scoreboard players operation $math.out_0 um.dummy /= $cons.100 um.dummy

#apply resistance
execute store result score $math.temp_0 um.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $math.temp_0 um.dummy 1

execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players set $math.temp_1 um.dummy 5
execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.temp_1 um.dummy -= $math.temp_0 um.dummy

execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.out_0 um.dummy *= $math.temp_1 um.dummy
execute if score $math.in_1 um.dummy matches 0..2 run scoreboard players operation $math.out_0 um.dummy /= $cons.5 um.dummy

#apply min dmg
execute if score $math.in_3 um.dummy > $math.out_0 um.dummy run scoreboard players operation $math.out_0 um.dummy = $math.in_3 um.dummy

#tellraw @p {"score":{"name":"$math.out_0","objective":"um.dummy"}}

#modify health
execute store result score $math.out_1 um.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score $math.temp_1 um.dummy run data get entity @s Health 10

#execute store result score $math.temp_0 um.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
#execute if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $math.temp_0 um.dummy 1
#execute store result score $math.temp_2 um.dummy run data get entity @s ActiveEffects[{Id:11b}].Duration
#effect give @s minecraft:resistance 1 3 true
effect give @s[type=!#undermagic:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#undermagic:undead] minecraft:instant_health 1 0 true
#effect clear @s minecraft:resistance
#execute if score $math.temp_0 um.dummy matches 1 run function undermagic:utils/damage/reapply_res_1
#execute if score $math.temp_0 um.dummy matches 2 run function undermagic:utils/damage/reapply_res_2
#execute if score $math.temp_0 um.dummy matches 3 run function undermagic:utils/damage/reapply_res_3
#execute if score $math.temp_0 um.dummy matches 4 run function undermagic:utils/damage/reapply_res_4
#execute if score $math.temp_0 um.dummy matches 5.. run function undermagic:utils/damage/reapply_res_5

scoreboard players operation $math.temp_0 um.dummy = $math.out_1 um.dummy
scoreboard players operation $math.temp_1 um.dummy -= $math.out_0 um.dummy
scoreboard players operation $math.temp_0 um.dummy -= $math.temp_1 um.dummy

tag @s add um.damage_reset
schedule function undermagic:utils/damage/damage_reset 1t
execute if score $math.temp_0 um.dummy >= $math.out_1 um.dummy run kill @s[gamemode=!creative,gamemode=!spectator]

execute if score $timer_10 um.dummy matches 0 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_0
execute if score $timer_10 um.dummy matches 1 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_1
execute if score $timer_10 um.dummy matches 2 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_2
execute if score $timer_10 um.dummy matches 3 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_3
execute if score $timer_10 um.dummy matches 4 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_4
execute if score $timer_10 um.dummy matches 5 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_5
execute if score $timer_10 um.dummy matches 6 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_6
execute if score $timer_10 um.dummy matches 7 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_7
execute if score $timer_10 um.dummy matches 8 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_8
execute if score $timer_10 um.dummy matches 9 if entity @s[tag=um.damage_reset] run function undermagic:utils/damage/apply_damage_9

scoreboard players set @s[type=player] um.invuln 0
scoreboard players set @s[type=player,scores={um.imm_charms=1}] um.invuln -5
scoreboard players set @s[type=player,scores={um.imm_charms=2}] um.invuln -10
scoreboard players set @s[type=player,scores={um.imm_charms=3}] um.invuln -15
scoreboard players set @s[type=player,scores={um.imm_charms=4}] um.invuln -20