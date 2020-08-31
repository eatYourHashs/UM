scoreboard players add @s um.wyrmling_lvl 1
scoreboard players set @s um.wyrmling_xp 0
tellraw @s ["",{"text":"Your ","color":"red"},{"text":"Ender Wyrmling ","bold":true,"color":"dark_purple"},{"text":"familiar leveled up to","color":"red"},{"text":" level ","color":"light_purple"},{"score":{"name":"@s","objective":"um.wyrmling_lvl"},"color":"light_purple"},{"text":"!","color":"red"}]
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 2