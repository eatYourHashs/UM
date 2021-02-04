particle minecraft:smoke ~ ~1 ~ 0.2 0.5 0.2 0 1
particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 1
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.wither.death player @a ~ ~ ~ 0.3 1
execute unless score @s um.dummy matches 2121.. run scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
scoreboard players add @s um.music 1
execute unless score @s um.dummy matches 2121.. run tp @a[distance=40..50] @s
execute facing entity @p feet run tp ^ ^ ^
execute unless score nohit um.dummy matches 1.. run tag @s add um.no_nohit
execute unless entity @s[tag=um.shadesull_p2] run function undermagic:entity/shadesull/shadesull_tick_p1
execute if entity @s[tag=um.shadesull_p2] run function undermagic:entity/shadesull/shadesull_tick_p2
bossbar set undermagic:shadesull players @a[distance=..50]
bossbar set undermagic:shadesull visible true
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:shadesull value run data get entity @s Health 1
