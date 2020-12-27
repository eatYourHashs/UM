particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1
execute facing entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..64] feet run tp ^ ^ ^1
scoreboard players set $math.in_0 um.dummy 120
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run kill @s
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 2
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run scoreboard players add @s um.lucid_chg 1
execute as @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] if score @s um.lucid_chg matches 15.. run function undermagic:entity/projectile/lucid_burst
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] as @e[type=#undermagic:hostile,distance=..3] run function undermagic:utils/damage_entity
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 100.. run kill @s