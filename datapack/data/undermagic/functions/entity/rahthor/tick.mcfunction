scoreboard players add @s um.dummy 1
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.5 1.3
execute store result score @s um.boss_hp run data get entity @s Health 1
particle smoke ~ ~ ~ 0.1 0 0.1 0.02 6
execute if score @s um.boss_hp matches 51.. run function undermagic:entity/rahthor/p1_tick
execute if score @s um.boss_hp matches ..50 run function undermagic:entity/rahthor/p2_tick
execute if score @s um.dummy matches 200.. run scoreboard players set @s um.dummy 0
bossbar set undermagic:rahthor players @a[distance=..50]
bossbar set undermagic:rahthor visible true
execute store result bossbar undermagic:rahthor value run data get entity @s Health 1
