
data modify storage undermagic:common boss_status.elder set value 0b

bossbar set undermagic:elder visible false
bossbar set undermagic:elder players @s

stopsound @a * um:music.elder

execute if score kill um.dummy matches 1 at @e[tag=um.elder_eye] run loot give @p loot undermagic:items/eye_on_you
execute if score kill um.dummy matches 1 at @e[tag=um.elder_eye] run advancement grant @a[distance=..128] only undermagic:undermagic/elder
execute if score kill um.dummy matches 1 at @e[tag=um.elder_eye] run advancement grant @a[distance=..128] only undermagic:undermagic/abyss elder

scoreboard players set kill um.dummy 0

tp @e[tag=um.elder] ~ -100 ~
kill @e[tag=um.elder]
kill @e[tag=um.elder_ray_target]
kill @e[tag=um.hand_marker_l]
kill @e[tag=um.hand_marker_r]
kill @e[tag=um.hand_marker_l2]
kill @e[tag=um.hand_marker_r2]
kill @e[tag=um.hand_marker_l3]
kill @e[tag=um.hand_marker_r3]
