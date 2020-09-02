
#scoreboard timers
scoreboard players add $timer_2 um.dummy 1
execute if score $timer_2 um.dummy matches 2.. run scoreboard players set $timer_2 um.dummy 0

scoreboard players add $timer_10 um.dummy 1
execute if score $timer_10 um.dummy matches 10.. run scoreboard players set $timer_10 um.dummy 0

scoreboard players add $timer_20 um.dummy 1
execute if score $timer_20 um.dummy matches 20.. run scoreboard players set $timer_20 um.dummy 0

#ticking functions
execute if score $timer_10 um.dummy matches 0 run function undermagic:common_interval
execute as @a at @s run function undermagic:player/main
function undermagic:boss/tick

#Entities
execute as @e[type=#undermagic:needs_processing,tag=!um_processed] at @s run function undermagic:entity/processing/process
execute as @e[tag=um_entity] at @s run function undermagic:entity/entity_tick

#other stuff
scoreboard players remove @e[scores={um.aw_mark=1..}] um.aw_mark 1
scoreboard players remove @e[scores={um.oathbow_mark=1..}] um.oathbow_mark 1

execute store result bossbar undermagic:elder value run scoreboard players get @e[tag=um_elder_eye,limit=1] um.boss_hp

