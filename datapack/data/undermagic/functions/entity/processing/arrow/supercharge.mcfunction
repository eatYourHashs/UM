execute store result score dmg um.dummy run data get entity @s damage 10
execute if entity @p[distance=..2,scores={um.supchg_charms=1}] run scoreboard players add dmg um.dummy 30
execute if entity @p[distance=..2,scores={um.supchg_charms=2}] run scoreboard players add dmg um.dummy 60
execute if entity @p[distance=..2,scores={um.supchg_charms=3}] run scoreboard players add dmg um.dummy 90
execute if entity @p[distance=..2,scores={um.supchg_charms=4..}] run scoreboard players add dmg um.dummy 120
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
scoreboard players set @p[distance=..2,scores={um.supchg_charms=1..}] um.supchg_cd 0
