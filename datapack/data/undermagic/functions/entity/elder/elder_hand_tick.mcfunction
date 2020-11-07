execute if entity @s[tag=um.hand1,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_l,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[tag=um.hand2,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_r,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[tag=um.hand3,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_l2,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[tag=um.hand4,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_r2,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[tag=um.hand5,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_l3,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[tag=um.hand6,scores={um.dummy=..0}] facing entity @e[tag=um.hand_marker_r3,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute if entity @s[scores={um.dummy=1..}] facing entity @p feet run tp ^ ^ ^0.3
execute if score difficulty um.dummy matches 1.. if entity @s[scores={um.dummy=1..}] facing entity @p feet run tp ^ ^ ^0.2
execute if score difficulty um.dummy matches 2.. if entity @s[scores={um.dummy=1..}] facing entity @p feet run tp ^ ^ ^0.3
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 160
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 200
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 240
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 2
execute if entity @s[scores={um.dummy=1..}] as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..1] run function undermagic:utils/damage_entity
execute if entity @s[scores={um.dummy=1..}] if entity @p[distance=..1] run scoreboard players set @s um.dummy 0
execute if entity @s[scores={um.dummy=..-400}] run scoreboard players set @s um.dummy 70
execute if entity @s[scores={um.dummy=..-100}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 70
execute if entity @s[scores={um.dummy=..-100}] unless entity @e[distance=1..,tag=um.elder_hand] run scoreboard players set @s um.dummy 50
execute if entity @s[scores={um.dummy=-50}] run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-250}] run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-25}] unless entity @e[distance=1..,tag=um.elder_hand] run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-25}] if score difficulty um.dummy matches 2.. if entity @e[distance=1..,tag=um.elder_hand] run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-60}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-50}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-40}] if score difficulty um.dummy matches 2.. run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-75}] unless entity @e[distance=1..,tag=um.elder_hand] run function undermagic:entity/elder/elder_bolt
execute if entity @s[scores={um.dummy=-75}] if score difficulty um.dummy matches 2.. if entity @e[distance=1..,tag=um.elder_hand] run function undermagic:entity/elder/elder_bolt
scoreboard players remove @s um.dummy 1
execute at @s facing entity @p feet run tp ^ ^ ^
execute store result score @s um.boss_hp run data get entity @s Health 1
scoreboard players operation @e[sort=nearest,limit=1,tag=um.elder_eye] um.boss_hp += @s um.boss_hp
