particle minecraft:flame ~ ~ ~ 0.4 0.4 0.4 0.1 20
execute if entity @s[tag=um.landed] run particle minecraft:portal ~ ~ ~ 0 0 0 1 10
execute unless entity @s[tag=um.landed] run tp @s ~ ~-1 ~
execute unless block ~ ~-2 ~ air unless entity @s[tag=um.landed] run playsound minecraft:entity.generic.explode player @a
execute unless block ~ ~-2 ~ air unless entity @s[tag=um.landed] run particle minecraft:explosion_emitter
execute unless block ~ ~-2 ~ air unless entity @s[tag=um.landed] run tag @s add um.landed
execute if entity @s[tag=um.landed] unless entity @e[tag=um.landed,distance=0.1..] unless entity @e[tag=um.main_demon_meteor] run scoreboard players set @s um.dummy_two 60
execute if entity @s[tag=um.landed] unless entity @e[tag=um.landed,distance=0.1..] unless entity @e[tag=um.main_demon_meteor] run tag @s add um.main_demon_meteor
execute if entity @s[tag=um.main_demon_meteor] run scoreboard players add @s um.dummy 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 60 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run function undermagic:entity/lesser_demon/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 60 unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run playsound minecraft:entity.wither.shoot player @a[distance=..100] ~ ~ ~ 1 0.5 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 60 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 120 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run function undermagic:entity/lesser_demon/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 120 unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run playsound minecraft:entity.wither.shoot player @a[distance=..100] ~ ~ ~ 1 0.5 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 120 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run function undermagic:entity/greater_demon/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run playsound minecraft:entity.wither.shoot player @a[distance=..100] ~ ~ ~ 1 0.5
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] unless score @s um.dummy_two matches 45 unless score @s um.dummy_two matches 30 unless score @s um.dummy_two matches 15 unless score @s um.dummy_two matches 0 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 45 run function undermagic:entity/maxon/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 45 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 30 run function undermagic:entity/rahthor/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 30 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 15 run function undermagic:entity/cataclyz/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 15 run scoreboard players remove @s um.dummy_two 1
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 0 run function undermagic:entity/pit_lord/summon
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180 at @e[sort=random,limit=1,tag=um.demon_meteor,tag=um.landed] unless entity @e[tag=um.demon_miniboss] if score @s um.dummy_two matches 0 run function undermagic:world/demon_army/end
execute if entity @s[tag=um.main_demon_meteor] if score @s um.dummy matches 180.. run scoreboard players set @s um.dummy 0
execute if entity @s[tag=um.main_demon_meteor] store result bossbar undermagic:demon_army value run scoreboard players get @s um.dummy_two
execute if entity @s[tag=um.main_demon_meteor] run bossbar set undermagic:demon_army visible true
execute if entity @s[tag=um.main_demon_meteor] run bossbar set undermagic:demon_army players @a[distance=..100]
