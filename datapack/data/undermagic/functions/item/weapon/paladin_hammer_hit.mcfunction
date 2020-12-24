scoreboard players add @s um.paladin_chg 1
execute if score @s um.paladin_chg matches 5.. run effect give @a[distance=..6] instant_health 1 0 true
execute if score @s um.paladin_chg matches 5.. run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.5
execute if score @s um.paladin_chg matches 5.. run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
execute if score @s um.paladin_chg matches 5.. run particle minecraft:heart ~ ~1 ~ 0.2 0.4 0.2 0 8
execute if score @s um.paladin_chg matches 5.. run scoreboard players set @s um.paladin_chg 0