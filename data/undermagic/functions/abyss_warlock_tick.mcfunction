scoreboard players remove @s um.orb_cooldown 1
scoreboard players set @s um.aw_mark 0
scoreboard players set @e[tag=um_warlock_hand,distance=..10,sort=nearest,limit=2] um.aw_mark 0
execute unless entity @e[tag=um_warlock_hand_l,distance=..10] run summon minecraft:armor_stand ^3 ^0.5 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_warlock_hand_l","um_warlock_hand"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}]}
tp @e[tag=um_warlock_hand_l,distance=..10,sort=nearest,limit=1] @s
tp @e[tag=um_warlock_hand_l,distance=..10,sort=nearest,limit=1] ^3 ^0.5 ^
execute unless entity @e[tag=um_warlock_hand_r,distance=..10] run summon minecraft:armor_stand ^-3 ^0.5 ^ {Silent:1b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_warlock_hand_r","um_warlock_hand"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420077}}]}
tp @e[tag=um_warlock_hand_r,distance=..10,sort=nearest,limit=1] @s
tp @e[tag=um_warlock_hand_r,distance=..10,sort=nearest,limit=1] ^-3 ^0.5 ^
execute if score $timer_10 um.dummy matches 8 as @e[tag=um_warlock_hand,distance=..4,sort=nearest] at @s facing entity @e[scores={um.aw_mark=1..},distance=..40,sort=nearest,limit=1] feet run tp @s
execute if score $timer_10 um.dummy matches 8 as @e[tag=um_warlock_hand,distance=..4,sort=nearest] at @s facing entity @e[scores={um.aw_mark=1..},distance=..40,sort=nearest,limit=1,tag=!item] feet run function undermagic:aw_hand_bolt