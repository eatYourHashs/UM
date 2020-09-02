scoreboard players add @s um.boss_hp 2
scoreboard players set @s um.dummy 0
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 2
execute facing entity @p feet run function undermagic:entity/blood_amaglam/blood_amaglam_shotgun
scoreboard players set @s um.dummy_three 0