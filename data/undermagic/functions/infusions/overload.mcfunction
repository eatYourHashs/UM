playsound minecraft:entity.wither.death player @a ~ ~ ~ 2 0.5
tag @s remove um_drac_aspect
tag @s remove um_ele_limbs
tag @s remove um_ironskin
tag @s remove um_flame_body
tag @s remove um_enderlord
scoreboard players set @s um.tolerance 0
particle minecraft:explosion_emitter ~ ~ ~ 1 0.5 1 0 5
gamerule showDeathMessages false
tellraw @a ["",{"selector":"@s"},{"text":" became overloaded"}]
kill @s
gamerule showDeathMessages true
