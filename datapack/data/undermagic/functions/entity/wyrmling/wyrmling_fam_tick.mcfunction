execute as @a if score @s um.familiar_id = @e[sort=nearest,limit=1,tag=um_wyrmling_fam] um.familiar_id run scoreboard players operation temp um.dummy = @s um.familiar_id
execute as @a if score @s um.familiar_id = temp um.dummy run scoreboard players operation temp2 um.dummy = @s um.wyrmling_lvl
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow",Count:1b}},distance=..5] if score @s um.familiar_id = temp um.dummy if score temp2 um.dummy matches 9..10 if entity @e[type=arrow,distance=..4,tag=!um_deflected] run function undermagic:entity/wyrmling/wyrmling_block
execute as @a[distance=..5] if score @s um.familiar_id = temp um.dummy if score temp2 um.dummy matches 9..10 run effect give @s resistance 1 1 true
execute as @a[scores={um.sneak=0}] if score @s um.familiar_id = temp um.dummy run scoreboard players set temp5 um.dummy 0
execute as @a[scores={um.sneak=1..}] if score @s um.familiar_id = temp um.dummy run scoreboard players set temp5 um.dummy 1
scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
scoreboard players remove @s um.dummy_three 1
scoreboard players operation temp4 um.dummy = @s um.familiar_id
execute if score temp2 um.dummy matches 7.. run scoreboard players remove @s um.dummy_three 1
execute if score temp2 um.dummy matches 10 run scoreboard players remove @s um.dummy_three 1
execute if score @s um.dummy matches 3 if score temp2 um.dummy matches 1..9 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420087}
execute if score @s um.dummy matches 6 if score temp2 um.dummy matches 1..9 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420088}
execute if score @s um.dummy matches 9 if score temp2 um.dummy matches 1..9 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420089}
execute if score @s um.dummy matches 12 if score temp2 um.dummy matches 1..9 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420088}
execute if score @s um.dummy matches 3 if score temp2 um.dummy matches 10 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420113}
execute if score @s um.dummy matches 6 if score temp2 um.dummy matches 10 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420114}
execute if score @s um.dummy matches 9 if score temp2 um.dummy matches 10 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420115}
execute if score @s um.dummy matches 12 if score temp2 um.dummy matches 10 run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420114}
execute if score @s um.dummy matches 12 if score temp2 um.dummy matches 1..4 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 1.6
execute if score @s um.dummy matches 12 if score temp2 um.dummy matches 5..9 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.75 1.3
execute if score @s um.dummy matches 12 if score temp2 um.dummy matches 10 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 13 run scoreboard players set @s um.dummy 1
execute if score temp2 um.dummy matches 1..4 as @a if score @s um.familiar_id = temp um.dummy at @s run summon armor_stand ^-1.5 ^1 ^-1 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score temp2 um.dummy matches 5..9 as @a if score @s um.familiar_id = temp um.dummy at @s run summon armor_stand ^-2 ^1.5 ^-1.5 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score temp2 um.dummy matches 10 as @a if score @s um.familiar_id = temp um.dummy at @s run summon armor_stand ^-2 ^3 ^-1.5 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 1..4 if entity @e[distance=..32,type=#undermagic:hostile] run kill @e[tag=um_fam_marker]
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 5..9 if entity @e[distance=..48,type=#undermagic:hostile] run kill @e[tag=um_fam_marker]
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 10 if entity @e[distance=..64,type=#undermagic:hostile] run kill @e[tag=um_fam_marker]
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 1..4 if entity @e[distance=..32,type=#undermagic:hostile] at @e[distance=..32,type=#undermagic:hostile,limit=1,sort=nearest] run summon armor_stand ^-1.5 ^1 ^-1 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 5..9 if entity @e[distance=..48,type=#undermagic:hostile] at @e[distance=..48,type=#undermagic:hostile,limit=1,sort=nearest] run summon armor_stand ^-1.5 ^1 ^-1 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score @s um.dummy_two matches 200..400 if score temp2 um.dummy matches 10 if entity @e[distance=..64,type=#undermagic:hostile] at @e[distance=..32,type=#undermagic:hostile,limit=1,sort=nearest] run summon armor_stand ^-1.5 ^1 ^-1 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score @s um.dummy_two matches 200..400 if entity @e[type=#undermagic:hostile,distance=..3] run function undermagic:wyrmling_fam_bite
execute if score temp2 um.dummy matches 4 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..32] run kill @e[tag=um_fam_marker]
execute if score temp2 um.dummy matches 5..9 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..48] run kill @e[tag=um_fam_marker]
execute if score temp2 um.dummy matches 10 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..64] run kill @e[tag=um_fam_marker]
execute if score temp2 um.dummy matches 4 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..32] run summon armor_stand ~ ~10 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score temp2 um.dummy matches 5..9 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..48] run summon armor_stand ~ ~10 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score temp2 um.dummy matches 10 if score @s um.dummy_three matches 1..30 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..64] run summon armor_stand ~ ~10 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_fam_marker"]}
execute if score temp2 um.dummy matches 4 if score @s um.dummy_three matches ..1 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..32] facing entity @e[limit=1,sort=nearest,type=#undermagic:hostile] feet run function undermagic:entity/wyrmling/wyrmling_fam_fireball
execute if score temp2 um.dummy matches 5..9 if score @s um.dummy_three matches ..1 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..48] facing entity @e[limit=1,sort=nearest,type=#undermagic:hostile] feet run function undermagic:entity/wyrmling/wyrmling_fam_fireball
execute if score temp2 um.dummy matches 10 if score @s um.dummy_three matches ..1 if entity @e[limit=1,sort=nearest,type=#undermagic:hostile,distance=..64] facing entity @e[limit=1,sort=nearest,type=#undermagic:hostile] feet run function undermagic:entity/wyrmling/wyrmling_fam_fireball
execute facing entity @e[limit=1,tag=um_fam_marker,sort=nearest] feet if score temp2 um.dummy matches 1 run tp ^ ^ ^0.4
execute facing entity @e[limit=1,tag=um_fam_marker,sort=nearest] feet if score temp2 um.dummy matches 2..4 run tp ^ ^ ^0.6
execute facing entity @e[limit=1,tag=um_fam_marker,sort=nearest] feet if score temp2 um.dummy matches 5..7 run tp ^ ^ ^0.8
execute facing entity @e[limit=1,tag=um_fam_marker,sort=nearest] feet if score temp2 um.dummy matches 8..10 unless entity @e[tag=um_fam_marker,distance=..1.2] run tp ^ ^ ^1
execute if entity @e[tag=um_fam_marker,distance=..3.5] if entity @p[distance=..5] rotated as @p run tp ~ ~ ~
execute if score temp2 um.dummy matches 1..4 run data modify entity @s Small set value 1b
execute if score temp2 um.dummy matches 5..10 run data modify entity @s Small set value 0b
kill @e[tag=um_fam_marker]
execute if score @s um.dummy_two matches 400.. run scoreboard players set @s um.dummy_two 0
scoreboard players operation temp3 um.dummy = temp2 um.dummy
scoreboard players operation temp3 um.dummy *= 100 um.dummy
execute unless score temp2 um.dummy matches 10 as @a if score @s um.familiar_id = temp um.dummy if score @s um.wyrmling_xp >= temp3 um.dummy run function undermagic:entity/wyrmling/wyrmling_lvlup