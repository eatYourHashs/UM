scoreboard players add @s um.primal_cd 1
execute if score @s um.take_damage matches 1.. run scoreboard players set @s um.primal_cd 0
execute if score @s um.take_damage matches 1.. if score @s um.primal_chg matches 1.. run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 2
execute if score @s um.take_damage matches 1.. if score @s um.primal_chg matches 1.. run particle block jungle_leaves ~ ~1 ~ 0.2 0.4 0.2 0 20
execute if score @s um.take_damage matches 1.. if score @s um.primal_chg matches 1.. run scoreboard players remove @s um.primal_chg 1
execute if score @s um.primal_cd matches 80.. unless score @s um.primal_chg matches 3.. run particle block jungle_leaves ~ ~1 ~ 0.2 0.4 0.2 0 20
execute if score @s um.primal_cd matches 80.. unless score @s um.primal_chg matches 3.. run scoreboard players add @s um.primal_chg 1
execute if score @s um.primal_cd matches 80.. run scoreboard players set @s um.primal_cd 0
execute if score @s um.primal_chg matches 1.. run effect give @s resistance 1 2 true
