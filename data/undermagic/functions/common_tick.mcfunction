
#scoreboard timers
scoreboard players add $timer_2 um.dummy 1
execute if score $timer_2 um.dummy matches 2.. run scoreboard players set $timer_2 um.dummy 0

scoreboard players add $timer_10 um.dummy 1
execute if score $timer_10 um.dummy matches 10.. run scoreboard players set $timer_10 um.dummy 0

scoreboard players add $timer_20 um.dummy 1
execute if score $timer_20 um.dummy matches 20.. run scoreboard players set $timer_20 um.dummy 0

#common tick 10
execute if score $timer_10 um.dummy matches 0 run function undermagic:common_interval


#run main player function
execute as @a at @s run function undermagic:player/main

#other stuff
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack run scoreboard players add @s um.dummy 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack if score @s um.dummy matches 20.. run function undermagic:book_conversion
execute as @e[type=ghast,tag=!um_processed] at @s run function undermagic:ghast_processing
execute as @e[type=wither_skeleton,tag=!um_processed] at @s run function undermagic:skel_processing
execute as @e[type=creeper,tag=!um_processed] at @s run function undermagic:creep_processing
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~-0.9 ~ crafting_table run function undermagic:undercrafter_init
execute as @e[tag=um_entity] at @s run function undermagic:um_entity_tick
execute as @e[type=arrow,tag=!um_processed] at @s run function undermagic:arrow_processing
scoreboard players remove @e[scores={um.aw_mark=1..}] um.aw_mark 1
scoreboard players remove @e[scores={um.oathbow_mark=1..}] um.oathbow_mark 1
scoreboard players add @e[type=arrow] um.dummy 1
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"pit_lord_heart"}}}] run data merge entity @s {Health:100}
execute if score difficulty um.dummy matches 1.. as @e[type=ender_dragon,nbt={DragonPhase:8}] at @s facing entity @p feet run tp @s ^ ^ ^0.5
execute if score difficulty um.dummy matches 1.. if entity @e[type=ender_dragon] run scoreboard players add dragon um.dummy 1
execute if score difficulty um.dummy matches 1.. if score dragon um.dummy matches 301.. run scoreboard players set dragon um.dummy 0
execute if score difficulty um.dummy matches 1.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 130 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 50 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 100 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute store result bossbar undermagic:elder value run scoreboard players get @e[tag=um_elder_eye,limit=1] um.boss_hp
kill @e[type=item,nbt={Item:{id:"minecraft:structure_block"}}]
execute as @e[tag=um_split_shot] at @s run particle smoke
