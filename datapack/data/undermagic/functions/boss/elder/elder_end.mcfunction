
data modify storage undermagic:common boss_status.elder set value 0b

bossbar set undermagic:elder visible false
bossbar set undermagic:elder players @s

stopsound @a * um:boss_music.elder

execute at @e[tag=um.elder] run advancement grant @a[distance=..128] only undermagic:undermagic/elder
execute at @e[tag=um.elder] run advancement grant @a[distance=..128] only undermagic:undermagic/abyss elder

tp @e[tag=um.elder] ~ -100 ~
kill @e[tag=um.elder]
kill @e[tag=um.elder_ray_target]
kill @e[tag=um.hand_marker_l]
kill @e[tag=um.hand_marker_r]
kill @e[tag=um.hand_marker_l2]
kill @e[tag=um.hand_marker_r2]
kill @e[tag=um.hand_marker_l3]
kill @e[tag=um.hand_marker_r3]
