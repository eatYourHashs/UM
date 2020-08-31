scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 80..99 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0 10
execute if score @s um.dummy matches 80..99 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.5 2
execute if score @s um.dummy matches 100 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0.2 200
execute if score @s um.dummy matches 100 facing entity @p[distance=..16,gamemode=!spectator] feet run function undermagic:disciple_of_destruction_blast
execute if score @s um.dummy matches 110 if score @s um.boss_hp matches ..200 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0.2 200
execute if score @s um.dummy matches 110 if score @s um.boss_hp matches ..200 facing entity @p[distance=..16,gamemode=!spectator] feet run function undermagic:disciple_of_destruction_blast
execute if score @s um.dummy matches 120 if score @s um.boss_hp matches ..150 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0.2 200
execute if score @s um.dummy matches 120 if score @s um.boss_hp matches ..150 facing entity @p[distance=..16,gamemode=!spectator] feet run function undermagic:disciple_of_destruction_blast
execute if score @s um.dummy matches 130 if score @s um.boss_hp matches ..100 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0.2 200
execute if score @s um.dummy matches 130 if score @s um.boss_hp matches ..100 facing entity @p[distance=..16,gamemode=!spectator] feet run function undermagic:disciple_of_destruction_blast
execute if score @s um.dummy matches 140 if score @s um.boss_hp matches ..50 run particle minecraft:flame ^ ^1 ^2 0.1 0.1 0.1 0.2 200
execute if score @s um.dummy matches 140 if score @s um.boss_hp matches ..50 facing entity @p[distance=..16,gamemode=!spectator] feet run function undermagic:disciple_of_destruction_blast
execute if score @s um.dummy matches 401.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:disciple_of_destruction players @a[distance=..50]
bossbar set undermagic:disciple_of_destruction visible true
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:disciple_of_destruction value run data get entity @s Health 1
effect give @s invisibility 2 1 true
tp @e[sort=nearest,limit=1,tag=um_disciple_of_destruction_model] @s
