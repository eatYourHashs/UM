execute store result score @s um.tp_id run data get entity @s SelectedItem.tag.um_target
scoreboard players set @s um.tp_cooldown 4
execute as @e[tag=um.teleporter] if score @s um.dummy_two = @p um.tp_id run tp @p @s
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1