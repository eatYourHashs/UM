scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 20.. run scoreboard players set temp um.dummy 0
execute if score @s um.dummy matches 20.. run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 20.. run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
execute if score @s um.dummy matches 20.. run function undermagic:entity/wither/beam_cast