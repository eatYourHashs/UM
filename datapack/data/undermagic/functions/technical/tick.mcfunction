
#scoreboard timers
scoreboard players add $timer_2 um.dummy 1
execute if score $timer_2 um.dummy matches 2.. run scoreboard players set $timer_2 um.dummy 0

scoreboard players add $timer_10 um.dummy 1
execute if score $timer_10 um.dummy matches 10.. run scoreboard players set $timer_10 um.dummy 0

scoreboard players add $timer_20 um.dummy 1
execute if score $timer_20 um.dummy matches 20.. run scoreboard players set $timer_20 um.dummy 0

scoreboard players add $timer_100 um.dummy 1
execute if score $timer_100 um.dummy matches 100.. run scoreboard players set $timer_100 um.dummy 0

scoreboard players add $timer_200 um.dummy 1
execute if score $timer_200 um.dummy matches 200.. run scoreboard players set $timer_200 um.dummy 0

#ticking functions
execute if score $timer_10 um.dummy matches 0 run function undermagic:common_interval
execute as @a at @s run function undermagic:player/main
function undermagic:boss/tick

#Entities
execute as @e[type=#undermagic:needs_processing,tag=!um.processed] at @s run function undermagic:entity/processing/process
execute as @e[tag=um.entity] at @s run function undermagic:entity/entity_tick
execute as @e[scores={um.oblit_mark=1..}] at @s run function undermagic:item/weapon/obliteration/target_tick
execute as @e[type=#undermagic:absorbable,tag=!um.kinet_proc,tag=!global.ignore,tag=!global.ignore.kill] at @s if entity @a[distance=..3,scores={um.kinet_charms=1..}] run function undermagic:player/charms/kinetic_field_weak

#interval
execute if score $timer_20 um.dummy matches 0 as @e[type=item,tag=!um.checked,nbt={Item:{id:"minecraft:music_disc_13"}}] at @s run function undermagic:item/disc/check
execute if score $timer_20 um.dummy matches 10 as @e[type=item,tag=!um.checked,nbt={Item:{id:"minecraft:music_disc_13"}}] at @s run function undermagic:item/disc/check
execute if score $timer_20 um.dummy matches 0 if predicate undermagic:probability/0.001 if score dragon_dead um.dummy matches 1 in minecraft:the_end at @r[distance=0..] run function undermagic:entity/wyrmling/spawn
execute if score $timer_20 um.dummy matches 0 as @e[type=item_frame] at @s if block ~ ~-1 ~ minecraft:fire if block ~ ~-2 ~ minecraft:netherrack if data entity @s Item{id:"minecraft:crafting_table"} run function undermagic:item/tool/table_conversion
execute if score $timer_20 um.dummy matches 0 as @e[type=item_frame] at @s if block ~ ~-1 ~ minecraft:fire if block ~ ~-2 ~ minecraft:netherrack if data entity @s Item{id:"minecraft:cauldron"} run function undermagic:item/tool/cauldron_conversion
execute if score $timer_20 um.dummy matches 0 as @e[type=item_frame] at @s if block ~ ~-1 ~ minecraft:fire if block ~ ~-2 ~ minecraft:netherrack if data entity @s Item{id:"minecraft:book"} run function undermagic:item/tool/book_conversion
execute if score $timer_20 um.dummy matches 0 run scoreboard players set @e[tag=!global.ignore,type=!player] um.invuln 11

#other stuff
#scoreboard players remove @e[scores={um.aw_mark=1..}] um.aw_mark 1
scoreboard players remove @e[scores={um.oathbow_mark=1..}] um.oathbow_mark 1