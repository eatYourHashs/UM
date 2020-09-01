scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 12.. run particle minecraft:smoke ~ ~ ~ 0.1 3 0.1 0.2 1000
execute if score @s um.dummy matches 12.. run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 12.. positioned ~ ~ ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~1 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~2 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~3 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~4 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~5 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-1 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-2 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-3 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-4 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-5 ~ run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~ ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~1 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~2 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~3 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~4 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~5 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-2 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-3 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-4 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~-5 ~ run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 3 true
execute if score @s um.dummy matches 12.. positioned ~ ~ ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~1 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~2 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~3 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~4 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~5 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~-1 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~-2 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~-3 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~-4 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. positioned ~ ~-5 ~ run scoreboard players set @e[distance=..2] um.aw_mark 100
execute if score @s um.dummy matches 12.. run kill @s