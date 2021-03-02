
scoreboard players add @s um.dummy 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.04 20

execute if score @s um.dummy matches 5.. run particle minecraft:flash
execute if score @s um.dummy matches 5.. run playsound minecraft:entity.zombified_piglin.angry block @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 5.. run playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 0.8

execute if score @s um.dummy matches 5.. run loot give @p loot undermagic:items/demonomicon
execute if score @s um.dummy matches 5.. run data modify entity @s Item.id set value "minecraft:air"
execute if score @s um.dummy matches 5.. run scoreboard players set @s um.dummy 0
