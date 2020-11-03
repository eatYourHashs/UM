scoreboard players set @e[tag=!global.ignore,distance=..2] um.oblit_mark 1
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 2 300
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 0.5
playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 2
scoreboard players set @s um.mana_cd -170
scoreboard players set @s um.oblit_prog 0