scoreboard players set @s um.wyrmling_lvl 1
scoreboard players set @s um.wyrmling_xp 0
tellraw @s ["",{"text":"You have been joined by a ","color":"red"},{"text":"Lvl 1 ","color":"light_purple"},{"text":"Ender Wyrmling ","bold":true,"color":"dark_purple"},{"text":"familiar!","color":"red"}]
function undermagic:summon_wyrmling
