scoreboard players set $math.in_0 um.dummy 21
function undermagic:utils/random
scoreboard players remove $math.out_0 um.dummy 11
execute store result score x um.dummy run data get entity @s Pos[0] 1
scoreboard players operation x um.dummy += $math.out_0 um.dummy
function undermagic:utils/random
scoreboard players remove $math.out_0 um.dummy 11
execute store result score z um.dummy run data get entity @s Pos[2] 1
scoreboard players operation z um.dummy += $math.out_0 um.dummy
summon armor_stand ~ ~10 ~ {Tags:["global.ignore","um.entity","um.shadesull_basic_bullet","um.shadesull","um.new_bullet"],NoGravity:1b,Invisible:1b,Marker:1b}
execute store result entity @e[limit=1,tag=um.new_bullet] Pos[0] double 1 run scoreboard players get x um.dummy
execute store result entity @e[limit=1,tag=um.new_bullet] Pos[2] double 1 run scoreboard players get z um.dummy
tag @e[limit=1,tag=um.new_bullet] remove um.new_bullet