scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200 at @p[distance=..16,gamemode=!creative,gamemode=!spectator] run summon fireball ~ ~7 ~ {ExplosionPower:2,direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0],CustomName:'{"text":"Bloodstone Elemental","color":"red","italic":false}'}
execute if score @s um.dummy matches 201.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:elemental players @a[distance=..40]
bossbar set undermagic:elemental visible true
bossbar set undermagic:elemental color red
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:elemental value run data get entity @s Health 1
particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0 1

execute if score $timer_20 um.dummy matches 1 run effect give @s invisibility 2 1 true
