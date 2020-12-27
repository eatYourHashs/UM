execute if score @s um.astral_stars matches 1..4 run particle minecraft:end_rod ~1 ~1 ~
execute if score @s um.astral_stars matches 2..4 run particle minecraft:end_rod ~-1 ~1 ~
execute if score @s um.astral_stars matches 3..4 run particle minecraft:end_rod ~ ~1 ~1
execute if score @s um.astral_stars matches 4 run particle minecraft:end_rod ~ ~1 ~-1
execute if score @s um.astral_stars matches 1.. run effect give @s resistance 1 4 true
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 1 2
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 1 2
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 1 2
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 30
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run scoreboard players set @s um.mana 100
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run scoreboard players set @s um.astral_cd 3600
execute if score @s um.resist matches 1.. if score @s um.astral_stars matches 1.. run scoreboard players remove @s um.astral_stars 1
execute if score @s um.astral_cd matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~
execute if score @s um.astral_cd matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~
execute if score @s um.astral_cd matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~
execute if score @s um.astral_cd matches 1 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 30
execute if score @s um.astral_cd matches 1 run scoreboard players set @s um.astral_stars 4
execute unless score @s um.astral_cd matches 0.. run scoreboard players set @s um.astral_cd 1
execute if score @s um.astral_cd matches 1.. run scoreboard players remove @s um.astral_cd 1

