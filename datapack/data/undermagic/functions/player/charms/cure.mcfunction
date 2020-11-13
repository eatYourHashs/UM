scoreboard players add @s um.cure_cd 1
execute if score @s um.cure_charms matches 1 if score @s um.cure_cd matches 10.. run scoreboard players set @s um.cure_cd 0
execute if score @s um.cure_charms matches 2 if score @s um.cure_cd matches 8.. run scoreboard players set @s um.cure_cd 0
execute if score @s um.cure_charms matches 3 if score @s um.cure_cd matches 6.. run scoreboard players set @s um.cure_cd 0
execute if score @s um.cure_charms matches 4 if score @s um.cure_cd matches 4.. run scoreboard players set @s um.cure_cd 0
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:blindness
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:weakness
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:poison
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:wither
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:glowing
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:levitation
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:hunger
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:mining_fatigue
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:nausea
execute if score @s um.cure_cd matches 1 run effect clear @s minecraft:bad_omen
execute if score @s um.cure_cd matches 1 store success score temp0 um.dummy run effect clear @s minecraft:slowness
execute if score @s um.cure_cd matches 1 if score temp0 um.dummy matches 1.. run effect clear @s minecraft:resistance
