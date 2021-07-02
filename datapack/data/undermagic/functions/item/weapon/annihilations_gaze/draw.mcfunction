advancement revoke @s only undermagic:technical/annihilations_gaze
scoreboard players add @s um.annih_draw 1
scoreboard players set @s um.annih_timer 0
execute if score @s um.annih_draw matches 1 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.2
execute if score @s um.annih_draw matches 20 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.5
execute if score @s um.annih_draw matches 60 run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 2
execute if score @s um.annih_draw matches 20..59 positioned ~ ~1.78 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 2
execute if score @s um.annih_draw matches 60.. positioned ~ ~1.78 ~ run particle minecraft:flame ^ ^ ^1 0 0 0 0.01 2
