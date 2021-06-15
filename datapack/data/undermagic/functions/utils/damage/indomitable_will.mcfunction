execute if score @s um.champ_chg matches 1 if score $math.temp_2 um.dummy matches ..15 run scoreboard players set $math.temp_2 um.dummy 15
execute if score @s um.champ_chg matches 2 if score $math.temp_2 um.dummy matches ..30 run scoreboard players set $math.temp_2 um.dummy 30
execute if score @s um.champ_chg matches 3 if score $math.temp_2 um.dummy matches ..45 run scoreboard players set $math.temp_2 um.dummy 45
execute if score @s um.champ_chg matches 4.. if score $math.temp_2 um.dummy matches ..60 run scoreboard players set $math.temp_2 um.dummy 60
scoreboard players remove @s um.champ_chg 1