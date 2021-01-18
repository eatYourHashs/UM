scoreboard players add @s um.dummy 1
effect give @s weakness 1 99 true
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 0.5
execute store result score @s um.boss_hp run data get entity @s Health 1
execute if score @s um.boss_hp matches 101.. run function undermagic:entity/maxon/p1_tick
execute if score @s um.boss_hp matches ..100 run function undermagic:entity/maxon/p2_tick
execute if score @s um.dummy matches 281.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:maxon players @a[distance=..50]
bossbar set undermagic:maxon visible true
execute store result bossbar undermagic:maxon value run data get entity @s Health 1
