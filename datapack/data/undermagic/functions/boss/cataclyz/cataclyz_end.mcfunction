
data modify storage undermagic:common boss_status.cataclyz set value 0b

bossbar set undermagic:cataclyz visible false
bossbar set undermagic:cataclyz players @s

scoreboard players remove @e[tag=um.main_demon_meteor] um.dummy_two 1

tp @e[tag=um.cataclyz] ~ -100 ~
kill @e[tag=um.cataclyz]
kill @e[tag=um.cataclyz_fireball]
kill @e[tag=um.cataclyz_inferno]
kill @e[tag=um.cataclyz_curse]
kill @e[tag=um.cataclyz_large_fireball]
