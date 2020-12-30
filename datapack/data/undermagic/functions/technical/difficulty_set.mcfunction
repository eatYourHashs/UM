execute if score difficulty_set um.dummy matches 1 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 0.5 1
execute if score difficulty_set um.dummy matches 2 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 0.8 1
execute if score difficulty_set um.dummy matches 2 run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 2 1
execute if score difficulty_set um.dummy matches 3 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute if score difficulty_set um.dummy matches 3 run playsound minecraft:entity.wither.death player @a ~ ~ ~ 1 2 1
execute if score difficulty_set um.dummy matches 3 run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 0.5 1
execute if score difficulty_set um.dummy matches 1 run scoreboard players set difficulty um.dummy 0
execute if score difficulty_set um.dummy matches 2 run scoreboard players set difficulty um.dummy 1
execute if score difficulty_set um.dummy matches 3 run scoreboard players set difficulty um.dummy 2
execute if score difficulty_set um.dummy matches 1 run tellraw @a ["",{"text":"Vanilla","bold":true,"color":"green"},{"text":" difficulty selected.","color":"green"}]
execute if score difficulty_set um.dummy matches 2 run tellraw @a ["",{"text":"Lunatic","bold":true,"color":"red"},{"text":" difficulty selected.","color":"red"}]
execute if score difficulty_set um.dummy matches 3 run tellraw @a ["",{"text":"Infernal","bold":true,"color":"light_purple"},{"text":" difficulty selected. Good luck.","color":"light_purple"}]
scoreboard players set difficulty_set um.dummy 0
