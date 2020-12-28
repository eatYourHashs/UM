execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.5
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 200
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run attribute @s minecraft:generic.attack_damage modifier add a9d2c60a-26a9-42a2-940b-6b7cdba8daf1 night_form_atk 2 multiply
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run attribute @s minecraft:generic.movement_speed modifier add 0c1f3aea-96cb-4a34-a9e4-f9652455a525 night_form_spd 0.5 multiply
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run tag @s add um.night_form
execute if score @s um.sneak matches 1.. if score @s um.jump matches 1.. unless score @s um.night_cd matches 1.. run scoreboard players set @s um.night_cd 600
execute if entity @s[tag=um.night_form] run effect give @s resistance 1 1 true
execute if entity @s[tag=um.night_form] run effect give @s invisibility 1 0 true
execute if entity @s[tag=um.night_form] run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.01 10
scoreboard players remove @s um.night_cd 1
execute if score @s um.night_cd matches 1 run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1
execute if score @s um.night_cd matches 1 run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run attribute @s minecraft:generic.attack_damage modifier remove a9d2c60a-26a9-42a2-940b-6b7cdba8daf1
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 0c1f3aea-96cb-4a34-a9e4-f9652455a525
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 1 0.5
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 1 0.5
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.1 200
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run particle minecraft:dust 0.5 0 0 1 ^ ^1.7 ^1.5 0.8 0.2 0.8 0.1 100
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run particle minecraft:smoke ^ ^1.7 ^1.5 0.8 0.2 0.8 0.1 100
execute if score @s[tag=um.night_form] um.deal_damage matches 1.. run tag @s remove um.night_form